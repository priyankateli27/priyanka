
import java.util.logging.Logger;

import javax.servlet.http.HttpSession;

import org.hibernate.annotations.common.util.impl.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcartbackend.dao.CategoryDAO;
import com.niit.shoppingcartbackend.dao.UserDAO;
import com.niit.shoppingcartbackend.model.User;

public class HomeController {
Logger log = LoggerFactory.getLogger(HomeController.class);

@Autowired
UserDetails userDetails;

@Autowired
private CategoryDAO categoryDAO;

@Autowired
private UserDAO userDAO;

@Autowired
private Category category;

@RequestMapping("/")
public ModelAndView onLoad(HttpSession session)
{
	log.debug("Starting of the method onLoad");
	ModelAndView mv = new ModelAndView("/home");
	session.setAttribute("category", "category");
	session.setAttribute("categoryList", categoryDAO.list());
	log.debug("Ending of the method onLoad");
	return mv;
}
@RequestMapping(value = "user/register",method = RequestMethod.POST)
public ModelAndView registerUser(@ModelAttribute User userDetails)
{
userDAO.saveOrUpdate(userDetails);
return new ModelAndView("/home");
}
@RequestMapping("/registerHere")
public ModelAndView registerHere()
{
	ModelAndView mv = new ModelAndView("/home");
	mv.addObject("userDetails", "userDetails");
	mv.addObject("isUserClickedRegisterHere", "true");
	return mv;
}



}
