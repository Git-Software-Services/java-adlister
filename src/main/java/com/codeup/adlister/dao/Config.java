package com.codeup.adlister.dao;

public class Config {
    private static String url = "jdbc:mysql://localhost/adlister_db";
    private static String username = "adlister_admin";
    private static String password = "stupidpassword";

    public String getUrl() {
        return url;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

}
