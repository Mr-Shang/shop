package com.shop.medol;

/**
 * Created by asus-pc on 2015/8/16.
 */
public class User {
    private  int UserId;
    private  String Username;
    private  String Password;
    private  String Nickname;//”√ªßÍ«≥∆


    public User(int userId) {
        UserId = userId;
    }

    public User(String username, String password, String nickname) {
        Username = username;
        Password = password;
        Nickname = nickname;
    }

    public User() {

    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int userId) {
        UserId = userId;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getNickname() {
        return Nickname;
    }

    public void setNickname(String nickname) {
        Nickname = nickname;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (UserId != user.UserId) return false;
        if (Username != null ? !Username.equals(user.Username) : user.Username != null) return false;
        if (Password != null ? !Password.equals(user.Password) : user.Password != null) return false;
        return !(Nickname != null ? !Nickname.equals(user.Nickname) : user.Nickname != null);

    }

    @Override
    public int hashCode() {
        int result = UserId;
        result = 31 * result + (Username != null ? Username.hashCode() : 0);
        result = 31 * result + (Password != null ? Password.hashCode() : 0);
        result = 31 * result + (Nickname != null ? Nickname.hashCode() : 0);
        return result;
    }
}
