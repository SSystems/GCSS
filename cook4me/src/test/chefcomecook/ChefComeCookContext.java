package chefcomecook;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:**/WebContent/WEB-INF/cook4me-context.xml")
@WebAppConfiguration()
public abstract class ChefComeCookContext {

}
