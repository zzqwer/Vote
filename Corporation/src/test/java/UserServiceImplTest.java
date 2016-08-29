
import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.corporation.entity.Infomation;
import com.yc.corporation.entity.Users;
import com.yc.corporation.serivce.InfomatiomSerivce;
import com.yc.corporation.serivce.UserService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserServiceImplTest {
 @Autowired
 private UserService userService;
 
 
	@Test
	public void test() {
		Users user=userService.login(new Users("zz","a"));
		System.out.println(user);
		assertNotNull(user);
	}
	
	@Test
	public void testinfo() {
		System.out.println(	userService.findAlls()
);
		
	}
}
