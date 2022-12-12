/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.servlet;

import basicclass.Account;
import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LENOVO
 */
public class LoginServlet extends HttpServlet {

    private static final String ERRO = "invalid.html";

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
            String url = ERRO;
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String save = request.getParameter("savelogin");
            Account acc = null;
            try {
                if (email == null || email.equals("") || password == null || password.equals("")) {
                    Cookie[] c = request.getCookies();
                    String token = "";
                    if (c != null) {
                        for (Cookie acookie : c) {
                            if (acookie.getName().equals("selector")) {
                                token = acookie.getValue();
                            }
                        }
                    }
                    if (!token.equals("")) {
                        response.sendRedirect("index.jsp");
                    } else {
                        response.sendRedirect("erroPage.html");
                    }

                } else {

                    acc = AccountDAO.getAccounts(email, password);
                    if (acc != null) {
                        //admin
                        HttpSession S = request.getSession();
                        S.setAttribute("LoginUser", acc);

                        if (acc.getRole() == 1) {
                            HttpSession session = request.getSession(true);
                            if (session != null) {
                                session.setAttribute("name", acc.getFullname());
                                session.setAttribute("email", email);

                                //create a cookie and attach it to response object
                                if (save != null) {
                                    String token = DBUtils.RandomStringExmple.randomAlphaNumeric(7);
                                    AccountDAO.updateToken(token, email);
                                    Cookie cookie = new Cookie("selector", token);
                                    cookie.setMaxAge(60 * 2);
                                    response.addCookie(cookie);

                                }
                                response.sendRedirect("SearchAccountServlet");
//                                response.sendRedirect("AdminServlet");
                            }
                            } else if (acc.getRole() == 0) {
                                HttpSession  session = request.getSession(true);
                                if (session != null) {
                                    session.setAttribute("name", acc.getFullname());
                                    session.setAttribute("email", email);

                                    //create a cookie and attach it to response object
                                    if (save != null) {
                                        String token = DBUtils.RandomStringExmple.randomAlphaNumeric(7);
                                        AccountDAO.updateToken(token, email);
                                        Cookie cookie = new Cookie("selector", token);
                                        cookie.setMaxAge(60 * 2);
                                        response.addCookie(cookie);

                                    }
                                    response.sendRedirect("index.jsp");
                                }
                            }
                        
                    } else {
                        request.setAttribute("invalid", "Invalid email or password!");
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    }
                }
            } catch (Exception e) {
            } finally {
//                response.sendRedirect(url);
            }
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
        processRequest(request, response);
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
        processRequest(request, response);
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
