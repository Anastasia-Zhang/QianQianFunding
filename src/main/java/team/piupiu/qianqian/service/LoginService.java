package team.piupiu.qianqian.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.piupiu.qianqian.bean.LoginBean;
import team.piupiu.qianqian.dao.UserDAO;

@Service
public class LoginService {

    @Autowired
    UserDAO userDAO;

    /**
     *
     * @param loginBean
     * @return
     */
    public boolean verifyLogin(LoginBean loginBean) {
        return userDAO.login(loginBean.getUsername(), loginBean.getPassword());
    }
}
