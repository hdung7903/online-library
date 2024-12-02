/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Genre;
import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author leduy
 */
public class GenreDBContext extends DBContext<Genre> {

    @Override
    public ArrayList<Genre> list() {
        ArrayList<Genre> genres = new ArrayList<>();
        try {
            String sql = "SELECT * from genres";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            
            while(rs.next()){
                Genre genre = new Genre();
                
                genre.setId(rs.getInt("id"));
                genre.setName(rs.getString("name"));
                
                genres.add(genre);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GenreDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return genres;
    }

    @Override
    public void insert(Genre entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Genre entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Genre entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Genre get(Genre entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
