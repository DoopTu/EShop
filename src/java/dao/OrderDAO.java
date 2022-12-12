/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBUtils.MyLib;
import basicclass.Account;
import dto.Order;
import dto.OrderDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Set;

/**
 *
 * @author LENOVO
 */
public class OrderDAO {

    public static ArrayList<Order> getOrders() {
        ArrayList<Order> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                String sql = "SELECT OrderID, OrdDate, shipdate, dbo.Orders.status, dbo.Accounts.accID\n"
                        + "FROM dbo.Orders JOIN dbo.Accounts ON dbo.Accounts.accID = dbo.Orders.AccID\n"
                        +   "ORDER BY OrdDate DESC";
                PreparedStatement pst = cn.prepareStatement(sql);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int orderid = rs.getInt("orderID");
                        String orderdate = rs.getString("OrdDate");
                        String shipdate = rs.getString("shipdate");
                        int status = rs.getInt("status");
                        int accid = rs.getInt("accID");
                        Order order = new Order(orderid, orderdate, shipdate, status, accid);
                        list.add(order);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public static ArrayList<Order> getOrders(String email) {
        ArrayList<Order> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                String sql = "SELECT OrderID, OrdDate, shipdate, dbo.Orders.status, dbo.Accounts.accID\n"
                        + "FROM dbo.Orders JOIN dbo.Accounts ON dbo.Accounts.accID = dbo.Orders.AccID\n"
                        + "WHERE dbo.Accounts.email LIKE ? \n"
                        + "ORDER BY OrdDate DESC";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, email);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int orderid = rs.getInt("orderID");
                        String orderdate = rs.getString("OrdDate");
                        String shipdate = rs.getString("shipdate");
                        int status = rs.getInt("status");
                        int accid = rs.getInt("accID");
                        Order order = new Order(orderid, orderdate, shipdate, status, accid);
                        list.add(order);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public static ArrayList<OrderDetail> getOrderDetails(int orderID) {
        ArrayList<OrderDetail> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                String sql = "SELECT DetailId, OrderID, PID, PName, price, imgPath, quantity\n"
                        + "FROM dbo.OrderDetails, dbo.Plants\n"
                        + "WHERE OrderID = ? AND OrderDetails.FID = Plants.PID";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setInt(1, orderID);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int orderdetailid = rs.getInt("DetailId");
                        int plantid = rs.getInt("PID");
                        String plantname = rs.getString("PName");
                        int price = rs.getInt("price");
                        String imgpath = rs.getString("imgPath");
                        int quantity = rs.getInt("quantity");
                        OrderDetail ordetail = new OrderDetail(orderdetailid, orderID, plantid, plantname, price, imgpath, quantity);
                        list.add(ordetail);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public static boolean insertOrder(String email, HashMap<String, Integer> cart) {
        Connection cn = null;
        boolean result = false;

        try {
            cn = DBUtils.MyLib.makeConnection();
            if (cn != null) {
                int accid = 0;
                int orderid = 0;
                cn.setAutoCommit(false);//off autocommit
                //get account id by email
                String sql = "SELECT accID from dbo.Accounts WHERE dbo.Accounts.email = ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, email);
                ResultSet rs = pst.executeQuery();
                if (rs != null && rs.next()) {
                    accid = rs.getInt("accID");
                }
                //insert a new order
                System.out.println("Account ID: " + accid);
                Date d = new Date(System.currentTimeMillis());
                System.out.println("Order date: " + d);
                sql = "INSERT Orders(OrdDate,status,AccID) VALUES (?,?,?)";
                pst = cn.prepareStatement(sql);
                pst.setDate(1, MyLib.convertJavaDateToSqlDate(d));
                pst.setInt(2, 1);
                pst.setInt(3, accid);
                pst.executeUpdate();

                //get order id that is the lagest number
                sql = "SELECT top 1 orderID FROM Orders order BY orderId desc";
                pst = cn.prepareCall(sql);
                rs = pst.executeQuery();

                if (rs != null && rs.next()) {
                    orderid = rs.getInt("orderID");
                }
                System.out.println("Order ID: " + orderid);
                Set<String> pids = cart.keySet();
                for (String pid : pids) {
                    sql = "INSERT OrderDetails values(?,?,?)";
                    pst = cn.prepareStatement(sql);
                    pst.setInt(1, orderid);
                    pst.setInt(2, Integer.parseInt(pid.trim()));
                    pst.setInt(3, cart.get(pid));
                    pst.executeUpdate();
                    cn.commit();
                    cn.setAutoCommit(true);
                }
                return true;
            } else {
                System.out.println("Khong the chen Order!");
            }
        } catch (Exception e) {
            try {
                if (cn != null) {
                    cn.rollback();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
            result = false;
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return result;

    }

    public static void updateOrderStatus(int orderid, int status) {
        Connection cn = null;

        //make connection
        try {
            cn = MyLib.makeConnection();

            //viet cac query and exec
            if (cn != null) {
                String sql = "UPDATE dbo.Orders\n"
                        + "SET status = ?, OrdDate = GETDATE()\n"
                        + "WHERE OrderID = ?";
                PreparedStatement pstm = cn.prepareStatement(sql);
                pstm.setInt(1, status);
                pstm.setInt(2, orderid);
                int i = pstm.executeUpdate();

            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (cn != null) {
                try {
                    //dong connection
                    cn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

    }

    public static ArrayList<Order> getOrdersbyDate(String datefrom, String dateto) {
        ArrayList<Order> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                String sql = "SELECT OrderID, OrdDate, shipdate, dbo.Orders.status, dbo.Accounts.accID\n"
                        + "FROM dbo.Orders JOIN dbo.Accounts ON dbo.Accounts.accID = dbo.Orders.AccID\n"
                        + "WHERE dbo.Accounts.email LIKE ?";
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, datefrom);
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int orderid = rs.getInt("orderID");
                        String orderdate = rs.getString("OrdDate");
                        String shipdate = rs.getString("shipdate");
                        int status = rs.getInt("status");
                        int accid = rs.getInt("accID");
                        Order order = new Order(orderid, orderdate, shipdate, status, accid);
                        list.add(order);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }

    public static ArrayList<Order> getOrders(String orderdate, String shipdate) {
        ArrayList<Order> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = MyLib.makeConnection();
            if (cn != null) {
                String sql = "SELECT OrderID, OrdDate, shipdate, dbo.Orders.status, dbo.Accounts.accID\n"
                        + "FROM dbo.Orders JOIN dbo.Accounts ON dbo.Accounts.accID = dbo.Orders.AccID\n";

                if (!"".equals(orderdate) || !"".equals(shipdate)) {
                    sql = sql + "WHERE OrdDate LIKE ?";
                }
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, orderdate);

                if (!"".equals(shipdate)) {
                    sql = sql + " AND shipdate LIKE ? ";
                    pst = cn.prepareStatement(sql);
                    pst.setString(1, orderdate);
                    pst.setString(2, shipdate);

                }

                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {
                        int orderid = rs.getInt("orderID");
                        orderdate = rs.getString("OrdDate");
                        shipdate = rs.getString("shipdate");
                        int status = rs.getInt("status");
                        int accid = rs.getInt("accID");
                        Order order = new Order(orderid, orderdate, shipdate, status, accid);
                        list.add(order);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (cn != null) {
                    cn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return list;
    }

}
