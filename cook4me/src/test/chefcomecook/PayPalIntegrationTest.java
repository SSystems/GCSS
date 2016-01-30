package chefcomecook;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

import com.globacomp.ssystem.c4m.payment.PayPalIntegration;

public class PayPalIntegrationTest {

	public static void main(String[] args) {
		
		HttpServletRequest request = new MockHttpServletRequest();
		
		HttpServletResponse response = new MockHttpServletResponse();
		
		PayPalIntegration integration = new PayPalIntegration(request, response);
		
		integration.CallShortcutExpressCheckout("1", "USD", "A", "https://www.google.co.in/?q=success", "https://www.google.co.in/?q=fail");
	}
}
