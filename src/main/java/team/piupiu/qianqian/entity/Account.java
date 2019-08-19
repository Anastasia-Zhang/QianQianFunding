package team.piupiu.qianqian.entity;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Account {
    private String username;
    private String userPassword;
    private String userMail;

    @Id
    @Column(name = "USER_NAME", nullable = false, length = 50)
    public String getUsername() {
        return username;
    }

    public void setUsername(String userName) {
        this.username = userName;
    }

    @Basic
    @Column(name = "USER_PASSWORD", nullable = true, length = 50)
    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    @Basic
    @Column(name = "USER_MAIL", nullable = false, length = 50)
    public String getUserMail() {
        return userMail;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Account account = (Account) o;

        if (username != null ? !username.equals(account.username) : account.username != null) return false;
        if (userPassword != null ? !userPassword.equals(account.userPassword) : account.userPassword != null)
            return false;
        if (userMail != null ? !userMail.equals(account.userMail) : account.userMail != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = username != null ? username.hashCode() : 0;
        result = 31 * result + (userPassword != null ? userPassword.hashCode() : 0);
        result = 31 * result + (userMail != null ? userMail.hashCode() : 0);
        return result;
    }
}
