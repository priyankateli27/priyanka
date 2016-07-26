import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.dao.CategoryDAO;
import com.niit.shoppingcartbackend.dao.UserDAO;
import com.niit.shoppingcartbackend.model.User;

public class UserController<CartDAO, Cart> 
{
Logger log = LoggerFactory.getLogger(UserController.class);

@Autowired
User userDetails;

@Autowired
private CartDAO cartDAO;

@Autowired
private Cart cart;

@Autowired
private CategoryDAO categoryDAO;

@Autowired
private Category category;

@Autowired
private UserDAO userDAO;

@RequestMapping("/login")
public ModelAndView login(@RequestParam(value="name") String userID,
		@RequestParam(value = "password") String password,HttpSession session)
		log.debug("Starting of the method login");
		log.info("userID is {} password is {}",userID,password);
		ModelAndView mv = new ModelAndView("home");
		boolean isValidUser = userDAO.isValidUser(userID, password);
		
		if (isValidUser == true)
		{
			userDetails = userDAO.get(userID);
			session.setAttribute("loggedInUser", userDetails.getName());
			if(userDetails.getAdmin() == 1)
			{
				mv.addObject("isAdmin","true");
			}
			else
			{
				mv.addObject("isAdmin", "false");
				cart = cartDAO.get(userID);
				mv.addObject("cart", "cart");
				List<Cart> cartList = cartDAO.list();
			}
			
			
		}


}
