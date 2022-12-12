/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.servlet;

import dao.PlantDAO;
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
public class SaveChangePlantsServlet extends HttpServlet {

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
            int pid = Integer.parseInt(request.getParameter("pid"));
            
            String changepname = request.getParameter("changepname");
            if ("".equals(changepname)) {
                changepname = request.getParameter("oldpname");
            }
            
            String changeprice = request.getParameter("changeprice");
            int changeprice1 = 0 ;
            if ("".equals(changeprice)) {
                changeprice1 = Integer.parseInt(request.getParameter("oldprice")) ;
            } else {
                changeprice1 = Integer.parseInt(changeprice);
            }
            
            String changeimg = request.getParameter("changeimg");
            if ("".equals(changeimg)) {
                changeimg = request.getParameter("oldimg");
            }
            
            String changedes = request.getParameter("changedes");
            if ("".equals(changedes)) {
                changedes = request.getParameter("olddes");
            }
                        
            String status = request.getParameter("changepstatus");
            int status2 = 0;
            if (("".equals(status))) {
                String status1 = request.getParameter("oldpstatus");
                status2 = Integer.parseInt(status1);
                flag = true;
            } else if ((("0".equals(status)) || ("1".equals(status)))) {

                status2 = Integer.parseInt(status);
                flag = true;
            } else {
                request.setAttribute("msgstatus", "Status must be 0 or 1 !");
                flag = false;
            }

            String changecateid = request.getParameter("changecateid");
            int changecateid1 = 0 ;
            if ("".equals(changecateid)) {
                changecateid1 = Integer.parseInt(request.getParameter("oldcateid")) ;
            } else {
                changecateid1 = Integer.parseInt(changecateid);
            }
            
            if (flag == true) {
                PlantDAO.updateInforPlant(pid, changepname, changeprice1, changeimg, changedes, status2, changecateid1);
                request.setAttribute("msgchange", "Change successfully!");
                request.getRequestDispatcher("SearchPlantsServlet").forward(request, response);
            } else {
                request.getRequestDispatcher("ChangeInformationPlantsServlet").forward(request, response);
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
