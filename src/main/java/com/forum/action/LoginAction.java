package com.forum.action;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.forum.security.SecurityUtil;
import com.forum.service.UserService;

@Controller
@RequestMapping("/login.action")
public class LoginAction {
	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(params = "method=login")
	public String login(@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		/*
		 * User user = userService.validateLoginInfo(username, password);
		 * System.out.println(user); return "articles";
		 */
		Factory<SecurityManager> factory = SecurityUtil.getFactory();
		SecurityManager securityManager = factory.getInstance();

		// for this simple example quickstart, make the SecurityManager
		// accessible as a JVM singleton. Most applications wouldn't do this
		// and instead rely on their container configuration or web.xml for
		// webapps. That is outside the scope of this simple quickstart, so
		// we'll just do the bare minimum so you can continue to get a feel
		// for things.
		SecurityUtils.setSecurityManager(securityManager);

		// Now that a simple Shiro environment is set up, let's see what you can
		// do:

		// get the currently executing user:
		Subject currentUser = SecurityUtils.getSubject();

		// Do some stuff with a Session (no need for a web or EJB container!!!)
		Session session = currentUser.getSession();
		session.setAttribute("someKey", "aValue");
		String value = (String) session.getAttribute("someKey");
		if (value.equals("aValue")) {
			System.out.println("Retrieved the correct value! [" + value + "]");
		}

		// let's login the current user so we can check against roles and
		// permissions:
		if (!currentUser.isAuthenticated()) {
			UsernamePasswordToken token = new UsernamePasswordToken("lonestarr", "vespa");
			token.setRememberMe(true);
			try {
				currentUser.login(token);
			} catch (UnknownAccountException uae) {
				System.out.println("There is no user with username of " + token.getPrincipal());
			} catch (IncorrectCredentialsException ice) {
				System.out.println("Password for account " + token.getPrincipal() + " was incorrect!");
			} catch (LockedAccountException lae) {
				System.out.println("The account for username " + token.getPrincipal() + " is locked.  "
						+ "Please contact your administrator to unlock it.");
			}
			// ... catch more exceptions here (maybe custom ones specific to
			// your application?
			catch (AuthenticationException ae) {
				// unexpected condition? error?
			}
		}

		// say who they are:
		// print their identifying principal (in this case, a username):
		System.out.println("User [" + currentUser.getPrincipal() + "] logged in successfully.");

		// test a role:
		if (currentUser.hasRole("schwartz")) {
			System.out.println("May the Schwartz be with you!");
		} else {
			System.out.println("Hello, mere mortal.");
		}

		// test a typed permission (not instance-level)
		if (currentUser.isPermitted("lightsaber:weild")) {
			System.out.println("You may use a lightsaber ring.  Use it wisely.");
		} else {
			System.out.println("Sorry, lightsaber rings are for schwartz masters only.");
		}

		// a (very powerful) Instance Level permission:
		if (currentUser.isPermitted("winnebago:drive:eagle5")) {
			System.out.println("You are permitted to 'drive' the winnebago with license plate (id) 'eagle5'.  "
					+ "Here are the keys - have fun!");
		} else {
			System.out.println("Sorry, you aren't allowed to drive the 'eagle5' winnebago!");
		}

		// all done - log out!
		currentUser.logout();

		return null;
	}
}
