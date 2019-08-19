package team.piupiu.qianqian.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import team.piupiu.qianqian.service.LoginService;

import javax.servlet.http.HttpServletRequest;
import team.piupiu.qianqian.bean.LoginBean;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping
public class LoginController {
    private static final boolean TEST_MANDATORY_CAPTCHA_PASS = true;

    public static final int INVALID_CREDENTIALS = -1;
    public static final int SUCCESS = 0;


    @Autowired
    LoginBean loginBean;

    @Autowired
    LoginService loginService;
    @Autowired
    HttpServletRequest httpServletRequest;


    /**
     * Request the login page
     */
    @RequestMapping(value = "/login", method = GET)
    public String doGet(ModelMap map) {
        //TODO Remind if already logged in
        if(loginBean.isValidLogin()){
            map.addAttribute("isLoggedin", true);
        }
        return "login";
    }


    /**
     * Request of Logging in (Post)
     */
    @RequestMapping(value = "/login", method = POST)
    public String doLogin(String username, String password, ModelMap map){
        System.out.println("into controller");

        if (TEST_MANDATORY_CAPTCHA_PASS) {
            loginBean.setUsername(username);
            loginBean.setPassword(password);
            System.out.println("begin verify login");
            if (loginService.verifyLogin(loginBean)) {
                System.out.println("verify login success");
                map.addAttribute("loginStatus", SUCCESS);
                loginBean.setValidLogin(true);
                System.out.println("set Valid ture");
                httpServletRequest.getSession().setAttribute("login", true);
            } else {
                map.addAttribute("loginStatus", INVALID_CREDENTIALS);
            }

        }
        System.out.println("return login");
        return "login";

    }


}
