/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Book;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author leduy
 */
public class BookDBContext extends DBContext<Book> {

    @Override
    public ArrayList<Book> list() {
        ArrayList<Book> books = new ArrayList<>();
        try {

            String sql = "SELECT * FROM books";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Book book = new Book();
                
                book.setId(rs.getInt("id"));
                book.setIsbn(rs.getString("isbn"));
                //book.setGenre;
                //book.setAuthor();
                book.setThumbnail(rs.getString("thumbnail"));
                book.setPublishedYear(rs.getInt("publishedYear"));
                book.setTotalQuantity(rs.getInt("totalQuantity"));
                book.setAvailableQuantity(rs.getInt("availableQuantity"));
                
                
                books.add(book);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return books;
    }

    @Override
    public void insert(Book entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Book entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Book entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Book get(Book entity) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
