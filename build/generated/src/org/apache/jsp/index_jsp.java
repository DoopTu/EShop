package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.AccountDAO;
import basicclass.Account;
import basicclass.Account;
import java.util.ArrayList;
import dao.PlantDAO;
import dto.Plant;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"./img/logo.png\">\n");
      out.write("        <title>Plants Shop</title>\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\n");
      out.write("        <meta content=\"Free HTML Templates\" name=\"keywords\">\n");
      out.write("        <meta content=\"Free HTML Templates\" name=\"description\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css\" integrity=\"sha384-X8QTME3FCg1DLb58++lPvsjbQoCT9bp3MsUU3grbIny/3ZwUJkRNO8NPW6zqzuW9\" crossorigin=\"anonymous\">\n");
      out.write("        <link rel=\"stylesheet prefetch\" href=\"https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css\">\n");
      out.write("        <!-- Favicon -->\n");
      out.write("        <link href=\"img/favicon.ico\" rel=\"icon\">\n");
      out.write("\n");
      out.write("        <!-- Google Web Fonts -->\n");
      out.write("        <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap\" rel=\"stylesheet\"> \n");
      out.write("\n");
      out.write("        <!-- Font Awesome -->\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Libraries Stylesheet -->\n");
      out.write("        <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Customized Bootstrap Stylesheet -->\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/customstyle.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- Topbar Start -->\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"row bg-secondary py-2 px-xl-5\">\n");
      out.write("                <div class=\"col-lg-6 d-none d-lg-block\">\n");
      out.write("                    <div class=\"d-inline-flex align-items-center\">\n");
      out.write("                        <a class=\"text-dark\" href=\"\">FAQs</a>\n");
      out.write("                        <span class=\"text-muted px-2\">|</span>\n");
      out.write("                        <a class=\"text-dark\" href=\"\">Help</a>\n");
      out.write("                        <span class=\"text-muted px-2\">|</span>\n");
      out.write("                        <a class=\"text-dark\" href=\"\">Support</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-6 text-center text-lg-right\">\n");
      out.write("                    <div class=\"d-inline-flex align-items-center\">\n");
      out.write("                        <a class=\"text-dark px-2\" href=\"\">\n");
      out.write("                            <i class=\"fab fa-facebook-f\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"text-dark px-2\" href=\"\">\n");
      out.write("                            <i class=\"fab fa-twitter\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"text-dark px-2\" href=\"\">\n");
      out.write("                            <i class=\"fab fa-linkedin-in\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"text-dark px-2\" href=\"\">\n");
      out.write("                            <i class=\"fab fa-instagram\"></i>\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"text-dark pl-2\" href=\"\">\n");
      out.write("                            <i class=\"fab fa-youtube\"></i>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row align-items-center py-3 px-xl-5\">\n");
      out.write("                <div class=\"col-lg-3 d-none d-lg-block\">\n");
      out.write("                    <a href=\"\" class=\"text-decoration-none\">\n");
      out.write("                        <h1 class=\"m-0 display-5 font-weight-semi-bold\"><span class=\"text-primary font-weight-bold border px-3 mr-1\">E</span>Plants</h1>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-6 col-6 text-left\">\n");
      out.write("                    <form action=\"MainControlers\" method=\"post\">\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" placeholder=\"Search for products\" name=\"txtsearch\" value=\"");
      out.print((request.getParameter("txtsearch") == null) ? "" : request.getParameter("txtsearch"));
      out.write("\">\n");
      out.write("                            <div class=\"input-group-append\">\n");
      out.write("                                <input type=\"hidden\" name=\"searchby\" value=\"byname\">\n");
      out.write("                                <input class=\"input-group-text bg-transparent text-primary\" type=\"submit\" value=\"search\" name=\"action\" >\n");
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-3 col-6 text-right\">\n");
      out.write("                    <a href=\"\" class=\"btn border\">\n");
      out.write("                        <i class=\"fas fa-heart text-primary\"></i>\n");
      out.write("                        <span class=\"badge\">Like</span>\n");
      out.write("                    </a>\n");
      out.write("                    <a href=\"MainControlers?action=viewcart\" class=\"btn border\">\n");
      out.write("                        <i class=\"fas fa-shopping-cart text-primary\"></i>\n");
      out.write("                        <span class=\"badge\">View cart</span>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Topbar End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Navbar Start -->\n");
      out.write("        <div class=\"container-fluid mb-5\">\n");
      out.write("            <div class=\"row border-top px-xl-5\">\n");
      out.write("                <div class=\"col-lg-3 d-none d-lg-block\">\n");
      out.write("                    <a class=\"btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100\" data-toggle=\"collapse\" href=\"#navbar-vertical\" style=\"height: 65px; margin-top: -1px; padding: 0 30px;\">\n");
      out.write("                        <h6 class=\"m-0\">Categories</h6>\n");
      out.write("                        <i class=\"fa fa-angle-down text-dark\"></i>\n");
      out.write("                    </a>\n");
      out.write("                    <nav class=\"collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0\" id=\"navbar-vertical\">\n");
      out.write("                        <div class=\"navbar-nav w-100 overflow-hidden\" style=\"height: 410px\">\n");
      out.write("                            <div class=\"nav-item dropdown\">\n");
      out.write("\n");
      out.write("                                <a href=\"MainControlers?name=action&value=search\"  class=\"nav-link\" data-toggle=\"dropdown\">Hoa Hồng <i class=\"fa fa-angle-down float-right mt-1\"></i></a>\n");
      out.write("                                <div class=\"dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0\">\n");
      out.write("                                    <a href=\"\" class=\"dropdown-item\">Hoa Hồng Đỏ</a>\n");
      out.write("                                    <a href=\"\" class=\"dropdown-item\">Hoa Hồng Trắng</a>\n");
      out.write("                                    <a href=\"\" class=\"dropdown-item\">Hoa Hồng Đen</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"nav-item dropdown\">\n");
      out.write("                                <a href=\"#\" class=\"nav-link\" data-toggle=\"dropdown\">Hoa Tulip <i class=\"fa fa-angle-down float-right mt-1\"></i></a>\n");
      out.write("                                <div class=\"dropdown-menu position-absolute bg-secondary border-0 rounded-0 w-100 m-0\">\n");
      out.write("                                    <a href=\"\" class=\"dropdown-item\">Hoa Tulip đỏ</a>\n");
      out.write("                                    <a href=\"\" class=\"dropdown-item\">Hoa Tulip Trắng</a>\n");
      out.write("                                    <a href=\"\" class=\"dropdown-item\">Hoa Tulip cam</a>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <a href=\"MainControlers?action=search&txtsearch=1&searchby=bycate\" class=\"nav-item nav-link\">Hoa Tươi</a>\n");
      out.write("                            <a href=\"MainControlers?action=search&txtsearch=3&searchby=bycate\" class=\"nav-item nav-link\">Hoa cưới</a>\n");
      out.write("                            <a href=\"MainControlers?action=search&txtsearch=2&searchby=bycate\" class=\"nav-item nav-link\">Hoa sinh nhật</a>\n");
      out.write("                            <a href=\"MainControlers?action=search&txtsearch=4&searchby=bycate\" class=\"nav-item nav-link\">Hoa Tết</a>\n");
      out.write("                            <a href=\"MainControlers?action=search&txtsearch=6&searchby=bycate\" class=\"nav-item nav-link\">Hoa lễ</a>\n");
      out.write("                            <a href=\"MainControlers?action=search&txtsearch=7&searchby=bycate\" class=\"nav-item nav-link\">Hoa lễ tốt nghiệp</a>\n");
      out.write("                            <a href=\"MainControlers?action=search&txtsearch=8&searchby=bycate\" class=\"nav-item nav-link\">Hoa theo mùa</a>\n");
      out.write("                            <a href=\"MainControlers?action=search&txtsearch=1&searchby=bycate\" class=\"nav-item nav-link\">Best Sellers</a>\n");
      out.write("                        </div>\n");
      out.write("                    </nav>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-lg-9\">\n");
      out.write("                    <nav class=\"navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0\">\n");
      out.write("                        <a href=\"\" class=\"text-decoration-none d-block d-lg-none\">\n");
      out.write("                            <h1 class=\"m-0 display-5 font-weight-semi-bold\"><span class=\"text-primary font-weight-bold border px-3 mr-1\">E</span>Plant</h1>\n");
      out.write("                        </a>\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggler\" data-toggle=\"collapse\" data-target=\"#navbarCollapse\">\n");
      out.write("                            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <div class=\"collapse navbar-collapse justify-content-between\" id=\"navbarCollapse\">\n");
      out.write("                            <div class=\"navbar-nav mr-auto py-0\">\n");
      out.write("                                <a href=\"index.jsp\" class=\"nav-item nav-link active\">Home</a>\n");
      out.write("                                <a href=\"personalPage.jsp\" class=\"nav-item nav-link\">Personal Page</a>\n");
      out.write("                                <a href=\"detail.jsp\" class=\"nav-item nav-link\">Shop Detail</a>\n");
      out.write("                                <div class=\"nav-item dropdown\">\n");
      out.write("                                    <a href=\"#\" class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\">Pages</a>\n");
      out.write("                                    <div class=\"dropdown-menu rounded-0 m-0\">\n");
      out.write("                                        <a href=\"cart.jsp\" class=\"dropdown-item\">Shopping Cart</a>\n");
      out.write("                                        <a href=\"checkout.jsp\" class=\"dropdown-item\">Checkout</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <a href=\"contact.jsp\" class=\"nav-item nav-link\">Contact</a>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            ");

                                String name = (String) session.getAttribute("name");
                                String email = (String) session.getAttribute("email");
                                Cookie[] c = request.getCookies();
                                boolean login = false;
                                if (name == null) {
                                    String token = "";
                                    for (Cookie acookie : c) {
                                        if (acookie.getName().equals("selector")) {
                                            token = acookie.getValue();
                                            Account acc = AccountDAO.getAccounts(token);
                                            if (acc != null) {
                                                name = acc.getFullname();
                                                email = acc.getEmail();
                                                login = true;
                                            }
                                        }
                                    }
                            
      out.write("\n");
      out.write("                            <div class=\"navbar-nav ml-auto py-0\">\n");
      out.write("                                <a href=\"login.jsp\" class=\"nav-item nav-link\">Login</a>\n");
      out.write("                                <span class=\"nav-item nav-link\"> | </span>\n");
      out.write("                                <a href=\"registration.jsp\" class=\"nav-item nav-link\">Register</a>\n");
      out.write("                            </div>\n");
      out.write("                                ");

                                    } else
                                        login = true;

                                    if (login) {
                                
      out.write("\n");
      out.write("                            <div class=\"navbar-nav ml-auto py-0\">\n");
      out.write("                                <a href=\"personalPage.jsp\" class=\"nav-item nav-link\"><i style=\"font-size: 20px\" class=\"icon-user\"> </i></a>\n");
      out.write("                                <span class=\"nav-item nav-link\"> | </span>\n");
      out.write("                                <a href=\"MainControlers?action=logout\" class=\"nav-item nav-link\">Logout</a>\n");
      out.write("                            </div>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </nav>                                      \n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div id=\"header-carousel\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                        <div class=\"carousel-inner\">\n");
      out.write("                            <div class=\"carousel-item active\" style=\"height: 410px;\">\n");
      out.write("                                <img class=\"img-fluid\" src=\"img/slideshow1.jpg\" alt=\"Image\">\n");
      out.write("                                <div class=\"carousel-caption d-flex flex-column align-items-center justify-content-center\">\n");
      out.write("                                    <div class=\"p-3\" style=\"max-width: 700px;\">\n");
      out.write("                                        <h4 class=\"text-light text-uppercase font-weight-medium mb-3\">10% Off Your First Order</h4>\n");
      out.write("                                        <h3 class=\"display-4 text-white font-weight-semi-bold mb-4\">Beautiful Flowers</h3>\n");
      out.write("                                        <a href=\"MainControlers?action=search\" class=\"btn btn-light py-2 px-3\">Shop Now</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"carousel-item\" style=\"height: 410px;\">\n");
      out.write("                                <img class=\"img-fluid\" src=\"img/slideshow2.jpg\" alt=\"Image\">\n");
      out.write("                                <div class=\"carousel-caption d-flex flex-column align-items-center justify-content-center\">\n");
      out.write("                                    <div class=\"p-3\" style=\"max-width: 700px;\">\n");
      out.write("                                        <h4 class=\"text-light text-uppercase font-weight-medium mb-3\">10% Off Your First Order</h4>\n");
      out.write("                                        <h3 class=\"display-4 text-white font-weight-semi-bold mb-4\">Reasonable Price</h3>\n");
      out.write("                                        <a href=\"MainControlers?action=search\" class=\"btn btn-light py-2 px-3\">Shop Now</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"carousel-item\" style=\"height: 410px;\">\n");
      out.write("                                <img class=\"img-fluid\" src=\"img/slideshow3.jpg\" alt=\"Image\">\n");
      out.write("                                <div class=\"carousel-caption d-flex flex-column align-items-center justify-content-center\">\n");
      out.write("                                    <div class=\"p-3\" style=\"max-width: 700px;\">\n");
      out.write("                                        <h4 class=\"text-light text-uppercase font-weight-medium mb-3\">10% Off Your First Order</h4>\n");
      out.write("                                        <h3 class=\"display-4 text-white font-weight-semi-bold mb-4\">The Best Quality</h3>\n");
      out.write("                                        <a href=\"MainControlers?action=search\" class=\"btn btn-light py-2 px-3\">Shop Now</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <a class=\"carousel-control-prev\" href=\"#header-carousel\" data-slide=\"prev\">\n");
      out.write("                            <div class=\"btn btn-dark\" style=\"width: 45px; height: 45px;\">\n");
      out.write("                                <span class=\"carousel-control-prev-icon mb-n2\"></span>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"carousel-control-next\" href=\"#header-carousel\" data-slide=\"next\">\n");
      out.write("                            <div class=\"btn btn-dark\" style=\"width: 45px; height: 45px;\">\n");
      out.write("                                <span class=\"carousel-control-next-icon mb-n2\"></span>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Navbar End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Featured Start -->\n");
      out.write("        <div style=\"margin-top: -50px\" class=\"container-fluid pt-5\">\n");
      out.write("            <div class=\"row px-xl-5 pb-3\">\n");
      out.write("                <div class=\"col-lg-3 col-md-6 col-sm-12 pb-1\">\n");
      out.write("                    <div class=\"d-flex align-items-center border mb-4\" style=\"padding: 30px;\">\n");
      out.write("                        <h1 class=\"fa fa-check text-primary m-0 mr-3\"></h1>\n");
      out.write("                        <h5 class=\"font-weight-semi-bold m-0\">Best products</h5>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-3 col-md-6 col-sm-12 pb-1\">\n");
      out.write("                    <div class=\"d-flex align-items-center border mb-4\" style=\"padding: 30px;\">\n");
      out.write("                        <h1 class=\"fa fa-shipping-fast text-primary m-0 mr-2\"></h1>\n");
      out.write("                        <h5 class=\"font-weight-semi-bold m-0\">Free Ship</h5>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-3 col-md-6 col-sm-12 pb-1\">\n");
      out.write("                    <div class=\"d-flex align-items-center border mb-4\" style=\"padding: 30px;\">\n");
      out.write("                        <h1 class=\"fas fa-exchange-alt text-primary m-0 mr-3\"></h1>\n");
      out.write("                        <h5 class=\"font-weight-semi-bold m-0\">Return in 14 days</h5>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-3 col-md-6 col-sm-12 pb-1\">\n");
      out.write("                    <div class=\"d-flex align-items-center border mb-4\" style=\"padding: 30px;\">\n");
      out.write("                        <h1 class=\"fa fa-phone-volume text-primary m-0 mr-3\"></h1>\n");
      out.write("                        <h5 class=\"font-weight-semi-bold m-0\">Support 24/7</h5>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Featured End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- New Products -->\n");
      out.write("        <div class=\" mb-5\">\n");
      out.write("            <div class=\"d-flex flex-column align-items-center justify-content-center\" style=\"min-height: 100px; margin-top: -40px\">\n");
      out.write("                <h2 class=\"font-weight-semi-bold text-uppercase mb-3\">Best seller</h2>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- New Products End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Products Start -->\n");
      out.write("        ");

            String keyword = request.getParameter("txtsearch");
            String searchby = request.getParameter("searchby");
            ArrayList<Plant> list;
            String[] tmp = {"Out of stock", "Availble"};
            if (keyword == null && searchby == null) {
                list = PlantDAO.getPlant("", "");
            } else {
                list = PlantDAO.getPlant(keyword, searchby);
            }

            if (list != null && !list.isEmpty()) {
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div style=\"margin-top: -60px\" class=\"row px-xl-5 pb-3\">\n");
      out.write("            ");

                for (Plant plant : list) {
            
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"col-lg-3 col-md-6 col-sm-12 pb-1\">\n");
      out.write("                <div class=\"card product-item border-0 mb-4\">\n");
      out.write("                    <div class=\"card-header product-img position-relative overflow-hidden bg-transparent border p-0\">\n");
      out.write("                        <img class=\"img-fluid w-100\" src=\"");
      out.print( plant.getPImgPath());
      out.write("\" alt=\"\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card-body border-left border-right text-center p-0 pt-4 pb-3\">\n");
      out.write("                        <h6 class=\"text-truncate mb-3\">");
      out.print(plant.getPName());
      out.write("</h6>\n");
      out.write("                        <h6 class=\"text-truncate mb-3\">");
      out.print(plant.getPDescription());
      out.write("</h6>\n");
      out.write("                        <div class=\"d-flex justify-content-center\">\n");
      out.write("                            <h6>");
      out.print(plant.getPPrice());
      out.write(" VND</h6><h6 class=\"text-muted ml-2\"><del style=\"color: red\">210000 VND</del></h6>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card-footer d-flex justify-content-between bg-light border\">\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print( plant.getPID() );
      out.write("\" name=\"pid\">\n");
      out.write("                        <a href=\"GetPlantServlet?pid=");
      out.print(plant.getPID() );
      out.write("\" class=\"btn btn-sm text-dark p-0\"><i class=\"fas fa-eye text-primary mr-1\"></i>View Detail</a>\n");
      out.write("                        <a href=\"MainControlers?action=addtocart&pid=");
      out.print( plant.getPID());
      out.write("\" class=\"btn btn-sm text-dark p-0\"><i class=\"fas fa-shopping-cart text-primary mr-1\"></i>Add To Cart</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("        ");

            }
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Subscribe Start -->\n");
      out.write("        <div class=\"container-fluid bg-secondary my-5\">\n");
      out.write("            <div class=\"row justify-content-md-center py-5 px-xl-5\">\n");
      out.write("                <div class=\"col-md-6 col-12 py-5\">\n");
      out.write("                    <div class=\"text-center mb-2 pb-2\">\n");
      out.write("                        <h2 class=\"section-title px-5 mb-3\"><span class=\"bg-secondary px-2\">Stay Updated</span></h2>\n");
      out.write("                        <p>Amet lorem at rebum amet dolores. Elitr lorem dolor sed amet diam labore at justo ipsum eirmod duo labore labore.</p>\n");
      out.write("                    </div>\n");
      out.write("                    <form action=\"\">\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control border-white p-4\" placeholder=\"Email Goes Here\">\n");
      out.write("                            <div class=\"input-group-append\">\n");
      out.write("                                <button class=\"btn btn-primary px-4\">Subscribe</button>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Subscribe End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Footer Start -->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Footer Start -->\n");
      out.write("        <div class=\"container-fluid bg-secondary text-dark mt-5 pt-5\">\n");
      out.write("            <div class=\"row px-xl-5 pt-5\">\n");
      out.write("                <div class=\"col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5\">\n");
      out.write("                    <a href=\"\" class=\"text-decoration-none\">\n");
      out.write("                        <h1 class=\"mb-4 display-5 font-weight-semi-bold\"><span class=\"text-primary font-weight-bold border border-white px-3 mr-1\">E</span>Plant</h1>\n");
      out.write("                    </a>\n");
      out.write("                    <p>A dhkjfhsdjf sdhf jshdfjlhsmdhf shdmsdhf mshdfjk sdkfsd fjsdmjfkl sjdfkjdslkfjksdjfksjd sd kds fkdjsfl.</p>\n");
      out.write("                    <p class=\"mb-2\"><i class=\"fa fa-map-marker-alt text-primary mr-3\"></i>Hehehe, LA, HAHA, UK, HCM City</p>\n");
      out.write("                    <p class=\"mb-2\"><i class=\"fa fa-envelope text-primary mr-3\"></i>info@example.com</p>\n");
      out.write("                    <p class=\"mb-0\"><i class=\"fa fa-phone-alt text-primary mr-3\"></i>+9999999999</p>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-lg-8 col-md-12\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4 mb-5\">\n");
      out.write("                            <h5 class=\"font-weight-bold text-dark mb-4\">Quick Links</h5>\n");
      out.write("                            <div class=\"d-flex flex-column justify-content-start\">\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"index.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Home</a>\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"shop.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Our Shop</a>\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"detail.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Shop Detail</a>\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"cart.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Shopping Cart</a>\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"checkout.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Checkout</a>\n");
      out.write("                                <a class=\"text-dark\" href=\"contact.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Contact Us</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4 mb-5\">\n");
      out.write("                            <h5 class=\"font-weight-bold text-dark mb-4\">Quick Links</h5>\n");
      out.write("                            <div class=\"d-flex flex-column justify-content-start\">\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"index.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Home</a>\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"shop.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Our Shop</a>\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"detail.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Shop Detail</a>\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"cart.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Shopping Cart</a>\n");
      out.write("                                <a class=\"text-dark mb-2\" href=\"checkout.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Checkout</a>\n");
      out.write("                                <a class=\"text-dark\" href=\"contact.jsp\"><i class=\"fa fa-angle-right mr-2\"></i>Contact Us</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-4 mb-5\">\n");
      out.write("                            <h5 class=\"font-weight-bold text-dark mb-4\">Newsletter</h5>\n");
      out.write("                            <form action=\"\">\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"text\" class=\"form-control border-0 py-4\" placeholder=\"Your Name\" required=\"required\" />\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <input type=\"email\" class=\"form-control border-0 py-4\" placeholder=\"Your Email\"\n");
      out.write("                                           required=\"required\" />\n");
      out.write("                                </div>\n");
      out.write("                                <div>\n");
      out.write("                                    <button class=\"btn btn-primary btn-block border-0 py-3\" type=\"submit\">Subscribe Now</button>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("<!--            <div class=\"row border-top border-light text-left mx-xl-5 py-4\">\n");
      out.write("                <div class=\"col-md-6 px-xl-0 text-right text-md-right\">\n");
      out.write("                    <img class=\"img-fluid\" src=\"img/payments.png\" alt=\"\">\n");
      out.write("                </div>\n");
      out.write("            </div>-->\n");
      out.write("        </div>\n");
      out.write("        <!-- Footer End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Back to Top -->\n");
      out.write("        <a href=\"#\" class=\"btn btn-primary back-to-top\"><i class=\"fa fa-angle-double-up\"></i></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- JavaScript Libraries -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"lib/easing/easing.min.js\"></script>\n");
      out.write("        <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Contact Javascript File -->\n");
      out.write("        <script src=\"mail/jqBootstrapValidation.min.js\"></script>\n");
      out.write("        <script src=\"mail/contact.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Template Javascript -->\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <!-- Footer End -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Back to Top -->\n");
      out.write("        <a href=\"#\" class=\"btn btn-primary back-to-top\"><i class=\"fa fa-angle-double-up\"></i></a>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- JavaScript Libraries -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <script src=\"lib/easing/easing.min.js\"></script>\n");
      out.write("        <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Contact Javascript File -->\n");
      out.write("        <script src=\"mail/jqBootstrapValidation.min.js\"></script>\n");
      out.write("        <script src=\"mail/contact.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Template Javascript -->\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
