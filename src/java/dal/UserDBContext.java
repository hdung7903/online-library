/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.User;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author leduy
 */
public class UserDBContext extends DBContext<User> {

    @Override
    public ArrayList<User> list() {
        ArrayList<User> users = new ArrayList<User>();
        try {
            String sql = "SELECT [id], firstName,lastName, email, dob, gender, role FROM users";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setEmail(rs.getString("email"));
                user.setDob(rs.getDate("dob"));
                user.setGender(rs.getBoolean("gender"));
                user.setRole(rs.getString("role"));

                users.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return users;
    }

    @Override
    public void insert(User entity) {
        try {
            String sql = "INSERT INTO users (firstName, lastName, hashedPassword, email, gender, dob, role, createdAt, updatedAt) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, GETDATE(), GETDATE());";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, entity.getFirstName());
            stm.setString(2, entity.getLastName());
            stm.setString(3, entity.getHashedPassword());
            stm.setString(4, entity.getEmail());
            stm.setBoolean(5, entity.isGender());
            stm.setDate(6, entity.getDob() != null ? new java.sql.Date(entity.getDob().getTime()) : null);
            stm.setString(7, entity.getRole());

            int affectedRows = stm.executeUpdate();

            if (affectedRows > 0) {
                ResultSet generatedKeys = stm.getGeneratedKeys();
                if (generatedKeys.next()) {
                    entity.setId(generatedKeys.getInt(1));
                }

                entity.setCreatedAt(LocalDateTime.now());
                entity.setUpdatedAt(LocalDateTime.now());
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void update(User entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(User entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public User get(User entity) {
        try {
            String sql = "SELECT firstName, lastName, email, role FROM users "
                    + "WHERE email = ? AND hashedPassword = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, entity.getEmail());
            stm.setString(2, entity.getHashedPassword());
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                User user = new User();
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
                user.setRole(rs.getString("role"));
                return user;
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public boolean isEmailExists(String email) {
        try {
            String sql = "SELECT COUNT(*) FROM [users] WHERE email = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();

            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
            return false;
        } catch (SQLException ex) {
            throw new RuntimeException("Error checking email existence", ex);
        }
    }

}
