package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public User findByUsername(String username) throws SQLException {
        String sql = "SELECT * FROM users WHERE username LIKE ?";
        String searchTermWithWildcards = "%" + username + "%";

        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, searchTermWithWildcards);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        ResultSet rs = stmt.executeQuery();
        while(rs.next()) {
            return extractUsers(rs);
        }
        return null;
    }


    private User extractUsers(ResultSet rs) throws SQLException {
            return new User(
                    rs.getLong("id"),
                    rs.getString("username"),
                    rs.getString("email"),
                    rs.getString("password")
            );
        }


    @Override
    public Long insert(User user) {
        try {
            ResultSet rs = createInsertQuery(user);
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            return null;
//            throw new RuntimeException("Error creating a new user.", e);
        }
    }

    private ResultSet createInsertQuery(User user) throws SQLException {

        String sql = "INSERT INTO users( username, email, password)" +
                " VALUES (?, ?, ?)";
        PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        stmt.setString(1, user.getUsername());
        stmt.setString(2, user.getEmail());
        stmt.setString(3, user.getPassword());
        stmt.executeUpdate();

        ResultSet generatedIdResultSet = stmt.getGeneratedKeys();
        return generatedIdResultSet;
    }
}
