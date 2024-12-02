/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.auth;

import dal.UserDBContext;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.time.ZoneId;
import java.time.format.DateTimeParseException;
import utils.PasswordUtils;

/**
 *
 * @author leduy
 */
public class Register extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("./auth/register.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String confirmPassword = request.getParameter("confirmPassword");
            String genderStr = request.getParameter("gender");
            String dobStr = request.getParameter("birthdate");
            String result = "";
            List<String> errors = new ArrayList<>();;

            if (!password.equals(confirmPassword)) {
                errors.add("Password and Confirm Password do not match");
            }
            Date dob = null;
            try {
                if (dobStr != null && !dobStr.trim().isEmpty()) {
                    LocalDate birthDate = LocalDate.parse(dobStr);
                    LocalDate today = LocalDate.now();

                    if (birthDate.isAfter(today)) {
                        errors.add("Date of birth cannot be in the future");
                    } else {
                        dob = Date.from(birthDate.atStartOfDay(ZoneId.systemDefault()).toInstant());
                    }
                }
            } catch (DateTimeParseException e) {
                errors.add("Invalid date format");
            }

            boolean gender = "1".equals(genderStr);

            if (errors.isEmpty()) {
                try {
                    UserDBContext userDAO = new UserDBContext();

                    if (userDAO.isEmailExists(email)) {
                        errors.add("Email already registered");
                        request.setAttribute("errors", errors);
                        request.getRequestDispatcher("auth/register.jsp").forward(request, response);
                        return;
                    }

                    User user = new User();
                    user.setFirstName(firstName);
                    user.setLastName(lastName);
                    user.setEmail(email);
                    user.setHashedPassword(PasswordUtils.hashPassword(password));
                    user.setGender(gender);
                    user.setDob(dob);
                    user.setRole("user");

                    userDAO.insert(user);

                    response.sendRedirect(request.getContextPath() + "/login");
                } catch (Exception e) {
                    errors.add("Registration failed: " + e.getMessage());
                    request.setAttribute("errors", errors);
                    request.getRequestDispatcher("auth/register.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("errors", errors);
                request.getRequestDispatcher("auth/register.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("error", "An unexpected error occurred: " + e.getMessage());
            request.getRequestDispatcher("auth/register.jsp").forward(request, response);
        }
    }

   

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
