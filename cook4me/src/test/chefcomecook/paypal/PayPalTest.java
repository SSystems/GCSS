package chefcomecook.paypal;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.TimeZone;

import javax.xml.parsers.ParserConfigurationException;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.xml.sax.SAXException;

import com.paypal.exception.ClientActionRequiredException;
import com.paypal.exception.HttpErrorException;
import com.paypal.exception.InvalidCredentialException;
import com.paypal.exception.InvalidResponseDataException;
import com.paypal.exception.MissingCredentialException;
import com.paypal.exception.SSLConfigurationException;
import com.paypal.sdk.exceptions.OAuthException;

import chefcomecook.ChefComeCookContext;
import urn.ebay.api.PayPalAPI.BMButtonSearchReq;
import urn.ebay.api.PayPalAPI.BMButtonSearchRequestType;
import urn.ebay.api.PayPalAPI.BMButtonSearchResponseType;
import urn.ebay.api.PayPalAPI.PayPalAPIInterfaceServiceService;
import urn.ebay.apis.eBLBaseComponents.ButtonSearchResultType;
import urn.ebay.apis.eBLBaseComponents.ErrorType;

public class PayPalTest extends ChefComeCookContext {

	@Autowired
	private PayPalAPIInterfaceServiceService payPalInterfaceService;
	
	@Test
	public void testPayPalAPIConnection() {
		System.out.println(payPalInterfaceService.getAccessToken());
		
	}
	
	@Test
	public void searchButton() throws SSLConfigurationException, InvalidCredentialException, HttpErrorException, InvalidResponseDataException, ClientActionRequiredException, MissingCredentialException, OAuthException, IOException, InterruptedException, ParserConfigurationException, SAXException, ParseException {
		BMButtonSearchReq request = new BMButtonSearchReq();
		BMButtonSearchRequestType reqType = new BMButtonSearchRequestType();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-ddhh:mm:sss");
		formatter.setTimeZone(TimeZone.getTimeZone("GMT"));
		Calendar startDate = Calendar.getInstance();
		startDate.add(Calendar.DATE, -1);
		
		reqType.setStartDate("2016-05-01T00:00:00Z");
		reqType.setEndDate("2016-05-02T23:59:59Z");
		
		System.out.println("2016-05-01T00:00:00Z");
		System.out.println("2016-05-02T23:59:59Z");
		
		request.setBMButtonSearchRequest(reqType);
		
		BMButtonSearchResponseType resp = payPalInterfaceService.bMButtonSearch(request);
		if (resp != null) {
			System.out.println("lastReq:"+payPalInterfaceService.getLastRequest());
			System.out.println("lastResp:"+payPalInterfaceService.getLastResponse());
			if (resp.getAck().toString().equalsIgnoreCase("SUCCESS")) {
				System.out.println("Success");
				//Map<Object, Object> map = new LinkedHashMap<Object, Object>();
				//map.put("Ack", resp.getAck());
				System.out.println("Ack:"+resp.getAck());
				
				Iterator<ButtonSearchResultType> iterator = resp
						.getButtonSearchResult().iterator();
				while (iterator.hasNext()) {
					ButtonSearchResultType result = (ButtonSearchResultType) iterator
							.next();
					
					//The hosted button ID
					//map.put("ButtonType", result.getButtonType());
					System.out.println("ButtonType:"+result.getButtonType());
					//The hosted button ID
					//map.put("Hosted Button ID",result.getHostedButtonID());
					System.out.println("Hosted Button ID:"+result.getHostedButtonID());
					//The item name
					//map.put("Item Name", result.getItemName());
					System.out.println("Item Name:"+ result.getItemName());
				}

			} else {
				System.out.println("Error:"+resp.getErrors());

				for(ErrorType error: resp.getErrors()) {
					System.out.println(error.getErrorCode()+error.getLongMessage());
				}

			}
		}

	}
}
