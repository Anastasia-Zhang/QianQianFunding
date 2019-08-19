package team.piupiu.qianqian.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import team.piupiu.qianqian.dao.AccountDAO;
import team.piupiu.qianqian.dao.UserDAO;
import team.piupiu.qianqian.entity.User;



@Service
public class AccountService {

    @Autowired
    private AccountDAO accountDAO;
    @Autowired
    private UserDAO userDAO;

    

    
    public boolean getAccount(String username) {
        return userDAO.isUsernameAlreadyExist(username);
    }




    public void insertAccount(User user) {

        System.out.println("--------------insertAccount-------------");

        accountDAO.insertAccount(user);
    }


}
