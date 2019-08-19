package team.piupiu.qianqian.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import team.piupiu.qianqian.bean.AccountBean;
import team.piupiu.qianqian.entity.User;
import team.piupiu.qianqian.service.AccountService;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
public class registerController {

    private static final boolean DUPLICATEDUSER = true;

    @Autowired
    AccountBean accountBean;

    @Autowired
    AccountService accountService;
    @Autowired
    HttpServletRequest httpServletRequest;



    /**
     * Request of register (Post)
     */
    @RequestMapping(value = "/register", method = POST)
    public String doRegister(User user, ModelMap map){



        if (accountService.getAccount(user.getUsername())){
            map.addAttribute("duplicatedUsers", DUPLICATEDUSER);
            System.out.println("username already exist");
            return "register";
        }else {
            System.out.println("Register begin");
            System.out.println("-----------------User info finish -----------------");
            accountService.insertAccount(user);
            return "login";
        }

    }
}
