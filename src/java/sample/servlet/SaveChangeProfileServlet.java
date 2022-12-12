/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.servlet;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
public class SaveChangeProfileServlet extends HttpServlet {

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
            boolean flag = false;
            int accid = Integer.parseInt(request.getParameter("accid"));
            String fullname = request.getParameter("changefullname");
            if ("".equals(fullname)) {
                fullname = request.getParameter("oldfullname");
            }
            String status = request.getParameter("changestatus");
            int status2 = 0;
            if (("".equals(status))) {
                String status1 = request.getParameter("oldstatus");
                status2 = Integer.parseInt(status1);
            } else if ((("0".equals(status)) || ("1".equals(status)))) {

                status2 = Integer.parseInt(status);
                flag = true;
            } else {
                request.setAttribute("msgstatus", "Status must be 0 or 1 !");
                flag = false;
            }

            String phone = request.getParameter("changephone");
            if ("".equals(phone)) {
                phone = request.getParameter("oldphone");
            }
            String role = request.getParameter("changerole");
            int role2 = 0;
            if ("".equals(role)) {
                String role1 = request.getParameter("oldrole");
                role2 = Integer.parseInt(role1);

            } else if ((("0".equals(status)) || ("1".equals(status)))) {

                role2 = Integer.parseInt(role);
                flag = true;
            } else {
                request.setAttribute("msgrole", "Role must be 0 or 1 !");
                flag = false;
            }
            if (flag == true) {
                AccountDAO.updateAccountProfile(accid, fullname, phone, status2, role2);
                request.setAttribute("msgchange", "Change successfully!");
                request.getRequestDispatcher("SearchAccountServlet").forward(request, response);
            } else {
                request.getRequestDispatcher("ChangeProfileServlet").forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
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
