package chefcomecook;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.globacomp.ssystem.c4m.mail.EmailTemplateService;
import com.globacomp.ssystem.c4m.mail.MailSender;

public class MailSenderTest extends ChefComeCookContextTest {

	@Autowired
	private MailSender mailSender;
	
	@Test
	public void testSendSimpleMail() throws InterruptedException {
		
		String to[] = {"mihirgohel@gmail.com"};
		String cc[] ={};
		String bcc[] = {};
		
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("name", "Mihir Gohel");
		model.put("verificationCode", "ABC");
		model.put("validTill", "Tomorrow");
		
		mailSender.sendMailFromTemplate(EmailTemplateService.ONBOARD_EMAIL_SUBJECT, EmailTemplateService.ONBOARD_EMAIL_TEMPLATE_PATH,model, to);
		
		synchronized (this) {
			this.wait(30000);
		}
	}
}

