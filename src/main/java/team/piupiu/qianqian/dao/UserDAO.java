package team.piupiu.qianqian.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import team.piupiu.qianqian.entity.User;

import java.util.List;


@Repository
public class UserDAO {

    public static final int INTERNAL_ERROR = 0;
    public static final int REGISTER_OK = 1;
    public static final int USER_ALREADY_EXIST = -1;

    @Autowired
    SessionFactory sessionFactory;

    /**
     * Verify Login
     */

    public boolean login(String username, String password) {
        try (Session session = sessionFactory.openSession()) {
            Query query = session.createQuery("FROM User where username=:username and password=:password");
            query.setString("username", username);
            query.setString("password", password);
            List list = query.list();
            return list.size() >= 1;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    /**
     * isUsernameAlreadyExist
     */
    public boolean isUsernameAlreadyExist(String username) {
        try (Session session = sessionFactory.openSession()) {
            Transaction transaction = session.beginTransaction();
            //To see if a user already exist
            Query query = session.createQuery("FROM User WHERE username=:username");
            query.setString("username", username);
            List list = query.list();
            transaction.commit();
            return list.size() > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }


    }

}

