package com.globacomp.ssystem.c4m.payment;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class PayPalIntegration {
	
	private String gv_APIEndpoint;
	private String gv_APIUser ="ChefComeCook";
	private String gv_APIPassword="Paypal@123";
	private String gv_APIVendor="tgandi1";
	private String gv_APIPartner= "PayPal";
	private String gv_BNCode= "PF-CCWizard"; 
	private String gv_Env="pilot";

	private String gv_nvpHeader;
	private String gv_ProxyServer;	
	private String gv_ProxyServerPort; 
	private int gv_Proxy;
	private boolean gv_UseProxy;
	private String PAYPAL_URL;
	private String Env;

	private String HTTPREQUEST_PROXYSETTING_SERVER = "";
	private String HTTPREQUEST_PROXYSETTING_PORT = "";
	private boolean USE_PROXY = false;
	
	private HttpSession session;
	private HttpServletRequest request;
	private HttpServletResponse response;
	
	{
		if (gv_Env == "pilot")
		{
			gv_APIEndpoint = "https://pilot-payflowpro.paypal.com";
			PAYPAL_URL = "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=";
		}
		else
		{
			gv_APIEndpoint = "https://payflowpro.paypal.com";
			PAYPAL_URL = "https://www.paypal.com/cgi-bin/webscr?cmd=_express-checkout&token=";
		} 
		
		gv_ProxyServer	= HTTPREQUEST_PROXYSETTING_SERVER;
		gv_ProxyServerPort = HTTPREQUEST_PROXYSETTING_PORT;
		gv_Proxy		= 2;	//'setting for proxy activation
		gv_UseProxy		= USE_PROXY;
	}
	
	public PayPalIntegration(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
		this.session = request.getSession(true);
	}
	
	
	/*********************************************************************************
	  * CallShortcutExpressCheckout: Function to perform the shortcut implementation of SetExpressCheckout
	  *
	  * Inputs:  
	  *		paymentAmount:  	Total value of the shopping cart
	  *		currencyCodeType: 	Currency code value the PayPal API
	  *		paymentType: 		paymentType has to be one of the following values: Sale or Order or Authorization
	  *		returnURL:			the page where buyers return to after they are done with the payment review on PayPal
	  *		cancelURL:			the page where buyers return to when they cancel the payment review on PayPal	  
	  *
	  * Output: Returns a HashMap object containing the response from the server.
	*********************************************************************************/
	public HashMap CallShortcutExpressCheckout( String paymentAmount, String currencyCodeType, String paymentType, 
												String returnURL, String cancelURL)
	{
		
		
		session.setAttribute("paymentType", paymentType);
		session.setAttribute("currencyCodeType", currencyCodeType);

		/* 
		Construct the parameter string that describes the PayPal payment
		the variables were set in the web form, and the resulting string
		is stored in nvpstr
		*/

		//String nvpstr = "&TENDER=P&ACTION=S";
		String nvpstr = "&CREATESECURETOKEN=Y&ACTION=S";
		if ("Authorization" == paymentType)
		{
			nvpstr = nvpstr + "&TRXTYPE=A";
		}
		else /* sale */
		{
			nvpstr = nvpstr + "&TRXTYPE=S";
		}
		
		nvpstr = nvpstr + "&AMT=" + paymentAmount;
		nvpstr = nvpstr + "&CURRENCY=" + currencyCodeType;
		nvpstr = nvpstr + "&CANCELURL=" + cancelURL;
		nvpstr = nvpstr + "&RETURNURL=" + returnURL;

		/* 
		Make the call to Payflow to get the Express Checkout token
		If the call succeded, then redirect the buyer to PayPal
		to begin to authorize payment.  If an error occured, show the
		resulting errors
		*/
		
		/* requires at least Java 5 */
		UUID uid = UUID.randomUUID();
		System.out.println("uuid:"+uid.toString());
		nvpstr = nvpstr.concat("&SECURETOKENID="+uid.toString());
	    HashMap nvp = httpcall(nvpstr, uid.toString());
	    String strAck = nvp.get("RESULT").toString();
	    System.out.println(nvp.get("RESPMSG"));
		if(strAck !=null && strAck.equalsIgnoreCase("0"))
		{
			session.setAttribute("SECURETOKEN", nvp.get("SECURETOKEN").toString());
			session.setAttribute("SECURETOKENID", uid.toString());
		}
		
		System.out.println(session.getAttribute("TOKEN"));
		return nvp;
	}
	
	/*********************************************************************************
	  * CallMarkExpressCheckout: Function to perform the SetExpressCheckout API call 
	  *
	  * Inputs:  
	  *		paymentAmount:  	Total value of the shopping cart
	  *		currencyCodeType: 	Currency code value the PayPal API
	  *		paymentType: 		paymentType has to be one of the following values: Sale or Order or Authorization
	  *		returnURL:			the page where buyers return to after they are done with the payment review on PayPal
	  *		cancelURL:			the page where buyers return to when they cancel the payment review on PayPal
	  *		shipToName:		the Ship to name entered on the merchant's site
	  *		shipToStreet:		the Ship to Street entered on the merchant's site
	  *		shipToCity:			the Ship to City entered on the merchant's site
	  *		shipToState:		the Ship to State entered on the merchant's site
	  *		shipToCountryCode:	the Code for Ship to Country entered on the merchant's site
	  *		shipToZip:			the Ship to ZipCode entered on the merchant's site
	  *		shipToStreet2:		the Ship to Street2 entered on the merchant's site
	  *		phoneNum:			the phoneNum  entered on the merchant's site  
	  *
	  * Output: Returns a HashMap object containing the response from the server.
	*********************************************************************************/
	public HashMap CallMarkExpressCheckout( String paymentAmount, String currencyCodeType, String paymentType, String returnURL, 
								String cancelURL, String shipToName, String shipToStreet, String shipToCity, String shipToState,
								String shipToCountryCode, String shipToZip, String shipToStreet2, String phoneNum)
	{

		session.setAttribute("paymentType", paymentType);
		session.setAttribute("currencyCodeType", currencyCodeType);
		
		/* 
		Construct the parameter string that describes the PayPal payment
		the varialbes were set in the web form, and the resulting string
		is stored in $nvpstr
		*/

		String nvpstr = "&TENDER=P&ACTION=S";
		if ("Authorization" == paymentType)
		{
			nvpstr = nvpstr + "&TRXTYPE=A";
		}
		else /* sale */
		{
			nvpstr = nvpstr + "&TRXTYPE=S";
		}
		
		nvpstr = nvpstr + "&AMT=" + paymentAmount;
		nvpstr = nvpstr + "&CURRENCY=" + currencyCodeType;
		nvpstr = nvpstr + "&CANCELURL=" + cancelURL;
		nvpstr = nvpstr + "&RETURNURL=" + returnURL;
		nvpstr = nvpstr + "&SHIPTOSTREET=" + shipToStreet;
		nvpstr = nvpstr + "&SHIPTOSTREET2=" + shipToStreet2;
		nvpstr = nvpstr + "&SHIPTOCITY=" + shipToCity;
		nvpstr = nvpstr + "&SHIPTOSTATE=" + shipToState;
		nvpstr = nvpstr + "&SHIPTOCOUNTRY=" + shipToCountryCode;
		nvpstr = nvpstr + "&SHIPTOZIP=" + shipToZip;
		nvpstr = nvpstr + "&ADDROVERRIDE=1";	// address override

		/* 
		Make the call to Payflow to set the Express Checkout token
		If the API call succeded, then redirect the buyer to PayPal
		to begin to authorize payment.  If an error occured, show the
		resulting errors
		*/
		
		/* requires at least Java 5 */
		UUID uid = UUID.randomUUID();
		
	    HashMap nvp = httpcall(nvpstr,uid.toString());
		String strAck = nvp.get("RESULT").toString();
	    if(strAck !=null && strAck.equalsIgnoreCase("0"))
		{
			session.setAttribute("TOKEN", nvp.get("token").toString());
		}			
		return nvp;
	}


	/*********************************************************************************
	  * GetShippingDetails: Function to perform GetExpressCheckoutDetails
	  *
	  * Inputs:  None
	  *
	  * Output: Returns a HashMap object containing the response from the server.
	*********************************************************************************/
	public HashMap GetShippingDetails( String token )
	{
		/* 
		Build a second API request to Payflow, using the token as the
		ID to get the details on the payment authorization
		*/
		
		
	    String paymentType = (String) session.getAttribute("paymentType");

	    String nvpstr = "&TOKEN=" + token + "&TENDER=P&ACTION=G";
		if ("Authorization" == paymentType)
		{
			nvpstr = nvpstr + "&TRXTYPE=A";
		}
		else /* sale */
		{
			nvpstr = nvpstr + "&TRXTYPE=S";
		}

	   /*
	    Make the API call and store the results in an array.  If the
		call was a success, show the authorization details, and provide
		an action to complete the payment.  If failed, show the error
		*/
		
		/* requires at least Java 5 */
		UUID uid = UUID.randomUUID();
		
		HashMap nvp = httpcall(nvpstr,uid.toString());
		String strAck = nvp.get("RESULT").toString();
	    if(strAck != null && strAck.equalsIgnoreCase("0"))
		{
			session.setAttribute("PAYERID", nvp.get("PAYERID").toString());
		}			
		return nvp;
	}
	
	/*********************************************************************************
	  * ConfirmPayment: Function to perform DoExpressCheckoutPayment
	  *
	  * Inputs:  None
	  *
	  * Output: Returns a HashMap object containing the response from the server.
	  *
	  * Note:
	  *       There are other optional parameters that can be passed to DoExpressCheckoutPayment that are not used here.
	  *       See TABLE A.7 in https://cms.paypal.com/cms_content/US/en_US/files/developer/PFP_ExpressCheckout_PP.pdf for details on the optional parameters.
	*********************************************************************************/
	public HashMap ConfirmPayment( String finalPaymentAmount )
	{

		
		String token 			=  (String) session.getAttribute("TOKEN");
		String currencyCodeType	=  (String) session.getAttribute("currencyCodeType");
		String paymentType 		=  (String) session.getAttribute("paymentType");
		String payerID 			=  (String) session.getAttribute("PAYERID");
		String serverName 		=  request.getServerName();

		String nvpstr = "&TOKEN=" + token + "&TENDER=P&ACTION=D";
		if ("Authorization" == paymentType)
		{
			nvpstr = nvpstr + "&TRXTYPE=A";
		}
		else /* sale */
		{
			nvpstr = nvpstr + "&TRXTYPE=S";
		}
		
		nvpstr = nvpstr + "&PAYERID=" + payerID + "&AMT=" + finalPaymentAmount;
		nvpstr = nvpstr + "&CURRENCY=" + currencyCodeType + "&IPADDRESS=" + serverName;
		
	    /* 
		Make the call to Payflow to finalize payment
		If an error occured, show the resulting errors
	    */
	    
	    String sessionuuid = (String) session.getAttribute("unique_id");
	    
	    if ("" == sessionuuid)
	    {
	    	/* requires at least Java 5 */
			UUID uid = UUID.randomUUID();
			sessionuuid = uid.toString();
			session.setAttribute("unique_id",sessionuuid);
	    }
		
		HashMap nvp = httpcall(nvpstr,sessionuuid);
		
		return nvp;
	}

	/*
	'-------------------------------------------------------------------------------------------------------------------------------------------
	' Purpose: 	Prepares the parameters for direct payment (credit card) and makes the call.
	'
	' Inputs:  
	'		paymentType: 		paymentType has to be one of the following values: Sale or Order
	'		paymentAmount:  	Total value of the shopping cart
	'		creditCardType		Credit card type has to one of the following values: Visa or MasterCard or Discover or Amex or Switch or Solo 
	'		creditCardNumber	Credit card number
	'		expDate				Credit expiration date
	'		cvv2				CVV2
	'		firstName			Customer's First Name
	'		lastName			Customer's Last Name
	'		street				Customer's Street Address
	'		city				Customer's City
	'		state				Customer's State				
	'		zip					Customer's Zip					
	'		countryCode			Customer's Country represented as a PayPal CountryCode
	'		currencyCode		Customer's Currency represented as a PayPal CurrencyCode
	'		orderdescription	Short textual description of the order
	'
	' Note:
	'		There are other optional inputs for credit card processing that are not presented here.
	'		For a complete list of inputs available, please see the documentation here for US and UK:
	'		https://cms.paypal.com/cms_content/US/en_US/files/developer/PP_PayflowPro_Guide.pdf
	'		https://cms.paypal.com/cms_content/GB/en_GB/files/developer/PP_WebsitePaymentsPro_IntegrationGuide_UK.pdf
	'		
	' Returns: 
	'		The NVP Collection object of the Response.
	'--------------------------------------------------------------------------------------------------------------------------------------------	
	*/
	public HashMap DirectPayment( String paymentType, String paymentAmount, String creditCardType, String creditCardNumber, String expDate, String cvv2, String firstName, String lastName, String street, String city, String state, String zip, String countryCode, String currencyCode, String orderdescription )
	{
		/* Construct the parameter string that describes the credit card payment */
		String nvpstr = "&TENDER=C";
		if ("Sale" == paymentType)
		{
			nvpstr = nvpstr + "&TRXTYPE=S";
		}
		else if ("Authorization" == paymentType)
		{
			nvpstr = nvpstr + "&TRXTYPE=A";
		}
		else /* default to sale */
		{
			nvpstr = nvpstr + "&TRXTYPE=S";
		}

	    /* requires at least Java 5 */
		UUID uid = UUID.randomUUID();
		
		nvpstr = nvpstr + "&ACCT=" + creditCardNumber + "CVV2=" + cvv2 + "&EXPDATE=" + expDate + "&ACCTTYPE=" + creditCardType;
		nvpstr = nvpstr + "&AMT=" + paymentAmount + "&CURRENCY=" + currencyCode;
		nvpstr = nvpstr + "&FIRSTNAME=" + firstName + "&LASTNAME=" + lastName + "&STREET=" + street + "&CITY=" + city;
		nvpstr = nvpstr + "&STATE=" + state + "&ZIP=" + zip + "&COUNTRY=" + countryCode;
		nvpstr = nvpstr + "&INVNUM=" + uid.toString() + "&ORDERDESC=" + orderdescription;
		/*
		' Transaction results (especially values for declines and error conditions) returned by each PayPal-supported
		' processor vary in detail level and in format. The Payflow Verbosity parameter enables you to control the kind
		' and level of information you want returned. 
		' By default, Verbosity is set to LOW. A LOW setting causes PayPal to normalize the transaction result values. 
		' Normalizing the values limits them to a standardized set of values and simplifies the process of integrating 
		' the Payflow SDK.
		' By setting Verbosity to MEDIUM, you can view the processors raw response values. This setting is more verbose
		' than the LOW setting in that it returns more detailed, processor-specific information. 
		' Review the chapter in the Developer's Guides regarding VERBOSITY and the INQUIRY function for more details.
		' Set the transaction verbosity to MEDIUM.
		*/
		nvpstr = nvpstr + "&VERBOSITY=MEDIUM";

		/*
		'-------------------------------------------------------------------------------------------
		' Make the call to Payflow to finalize payment
		' If an error occured, show the resulting errors
		'-------------------------------------------------------------------------------------------
		*/
		HashMap nvp =  httpcall(nvpstr,uid.toString());
		
		return nvp;
	}
	
	
	/*********************************************************************************
	  * httpcall: Function to perform the Payflow call
	  * 	@nvpStr is nvp string.
	  * returns a NVP string containing the response from the server.
	*********************************************************************************/
	public HashMap httpcall( String nvpStr, String unique_id )
	{

		String agent = "Mozilla/4.0";
		String respText = "";
		HashMap nvp = null;

		String encodedData = nvpStr+ "&PWD=" + gv_APIPassword + "&USER=" + gv_APIUser + "&VENDOR=" + gv_APIVendor + "&PARTNER=" + gv_APIPartner + nvpStr + "&BUTTONSOURCE=" + gv_BNCode;
		System.out.println("In connect");
		System.out.println(encodedData);
		try 
		{
			URL postURL = new URL( gv_APIEndpoint );
			HttpURLConnection conn = (HttpURLConnection)postURL.openConnection();

			// Set connection parameters. We need to perform input and output, 
	        // so set both as true. 
			conn.setDoInput (true);
			conn.setDoOutput (true);

			// Set the content type we are POSTing.
			conn.setRequestProperty("Content-Type", "text/namevalue");
			conn.setRequestProperty("User-Agent", agent );

			conn.setRequestProperty("Content-Length", String.valueOf(encodedData.length()));
			conn.setRequestMethod("POST");

			// set the host header
			if (gv_Env == "pilot") 
			{
				conn.setRequestProperty("Host", "pilot-payflowpro.paypal.com");
			}
			else
			{
				conn.setRequestProperty("Host", "payflowpro.paypal.com");
			}

			conn.setRequestProperty("X-VPS-CLIENT-TIMEOUT", "45");
			conn.setRequestProperty("X-VPS-REQUEST-ID", unique_id);
				
	        // get the output stream to POST to. 
			DataOutputStream output = new DataOutputStream(conn.getOutputStream());
			output.writeBytes( encodedData );
			output.flush();
	        output.close();
			
			// Read input from the input stream.
			DataInputStream  in = new DataInputStream(conn.getInputStream()); 
	    	int rc = conn.getResponseCode();
			if ( rc != -1)
			{
				BufferedReader is = new BufferedReader(new InputStreamReader( conn.getInputStream()));
				String _line = null;
				while(((_line = is.readLine()) !=null))
				{
					respText = respText + _line;
				}			
				nvp = deformatNVP( respText );
			}
			return nvp;
		}
		catch( IOException e )
		{
			// handle the error here
			return null;
		}
	}
	
	/*********************************************************************************
	  * deformatNVP: Function to break the NVP string into a HashMap
	  * 	pPayLoad is the NVP string.
	  * returns a HashMap object containing all the name value pairs of the string.
	*********************************************************************************/
	public HashMap deformatNVP( String pPayload )
	{
		HashMap nvp = new HashMap(); 
		StringTokenizer stTok = new StringTokenizer( pPayload, "&");
		while (stTok.hasMoreTokens())
		{
			StringTokenizer stInternalTokenizer = new StringTokenizer( stTok.nextToken(), "=");
			if (stInternalTokenizer.countTokens() == 2)
			{
				String key = URLDecoder.decode( stInternalTokenizer.nextToken());
				String value = URLDecoder.decode( stInternalTokenizer.nextToken());
				nvp.put( key.toUpperCase(), value );
			}
		}
		return nvp;
	}
	
	/*********************************************************************************
	  * RedirectURL: Function to redirect the user to the PayPal site
	  * 	token is the parameter that was returned by PayPal
	  * returns a HashMap object containing all the name value pairs of the string.
	*********************************************************************************/
	public void RedirectURL( String token )
	{
		String payPalURL = PAYPAL_URL + token; 
		
		//response.sendRedirect( payPalURL );
		response.setStatus(302);
		response.setHeader( "Location", payPalURL );
		response.setHeader( "Connection", "close" );
	}
}
