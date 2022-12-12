/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBUtils.MyLib;
import dto.Plant;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author LENOVO
 */
public class PlantDAO {

    public static ArrayList<Plant> getPlant(String keyword, String searchby) {
        ArrayList<Plant> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.MyLib.makeConnection();
            if (cn != null && searchby != null) {
                String sql = "SELECT PID, PName, price, imgPath, description, status, Plants.CateID, CateName\n"
                        + "FROM dbo.Plants INNER JOIN dbo.Categories ON Plants.CateID = Categories.CateID\n";
                if (searchby.equalsIgnoreCase("byname")) {
                    sql = sql + "WHERE Plants.PName LIKE ?";
                } else {
                    sql = sql + "WHERE Categories.CateID LIKE ?";
                }
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, "%" + keyword + "%");
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {

                        int id = rs.getInt("PID");
                        String name = rs.getString("PName");
                        int price = rs.getInt("price");
                        String imgpath = rs.getString("imgPath");
                        String description = rs.getString("description");
                        int status = rs.getInt("status");
                        int cateid = rs.getInt("CateID");
                        String catename = rs.getString("CateName");
                        Plant plant = new Plant(id, name, price, imgpath, description, status, cateid, catename);
                        list.add(plant);

                    }
                }
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
        return list;
    }

    public static Plant getPlant(int pid) throws Exception {
        Connection cn = null;
        Plant plant = null;
        //make connection
        try {
            cn = MyLib.makeConnection();

            //viet cac query and exec
            if (cn != null) {
                String sql = "SELECT PID, PName, price, imgPath, description,  status, Plants.CateID, CateName\n"
                        + "FROM dbo.Plants, dbo.Categories\n"
                        + "WHERE Plants.CateID = Categories.CateID AND PID =?";
                PreparedStatement pstm = cn.prepareStatement(sql);
                pstm.setInt(1, pid);
                ResultSet table = pstm.executeQuery();
                //xu ly dap an

                if (table != null && table.next()) {
//                    while (table.next()) {
                    pid = table.getInt("PID");
                    int price = table.getInt("price");
                    String pname = table.getString("PName");
                    String pimgPath = table.getString("imgPath");
                    String pdescription = table.getString("description");
                    String pcatename = table.getString("CateName");
                    int status = table.getInt("status");
                    int pCateID = table.getInt("CateID");
                    plant = new Plant(pid, pname, price, pimgPath, pdescription, status, pCateID, pcatename);

//                    }
                }

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
        return plant;
    }
    
    public static ArrayList<Plant> getPlantById(int pid) throws Exception {
        ArrayList<Plant> list = new ArrayList<>();
        Connection cn = null;
        Plant plant = null;
        //make connection
        try {
            cn = MyLib.makeConnection();

            //viet cac query and exec
            if (cn != null) {
                String sql = "SELECT PID, PName, price, imgPath, description,  status, Plants.CateID, CateName\n"
                        + "FROM dbo.Plants, dbo.Categories\n"
                        + "WHERE Plants.CateID = Categories.CateID AND PID =?";
                PreparedStatement pstm = cn.prepareStatement(sql);
                pstm.setInt(1, pid);
                ResultSet table = pstm.executeQuery();
                //xu ly dap an

                if (table != null && table.next()) {
//                    while (table.next()) {
                    pid = table.getInt("PID");
                    int price = table.getInt("price");
                    String pname = table.getString("PName");
                    String pimgPath = table.getString("imgPath");
                    String pdescription = table.getString("description");
                    String pcatename = table.getString("CateName");
                    int status = table.getInt("status");
                    int pCateID = table.getInt("CateID");
                    plant = new Plant(pid, pname, price, pimgPath, pdescription, status, pCateID, pcatename);
                    list.add(plant);
//                    }
                }

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
        return list;
    }

    public static ArrayList<Plant> getPlant() throws Exception {
        ArrayList<Plant> list = new ArrayList<>();
        Connection cn = null;
        Plant plant = null;
        //make connection
        try {
            cn = MyLib.makeConnection();

            //viet cac query and exec
            if (cn != null) {
                String sql = "SELECT PID, PName, price, imgPath, description,  status, Plants.CateID, CateName\n"
                        + "FROM dbo.Plants, dbo.Categories\n";

                Statement st = cn.createStatement();
                ResultSet table = st.executeQuery(sql);
                //xu ly dap an

                if (table != null && table.next()) {
//                    while (table.next()) {
                    int pid = table.getInt("PID");
                    int price = table.getInt("price");
                    String pname = table.getString("PName");
                    String pimgPath = table.getString("imgPath");
                    String pdescription = table.getString("description");
                    String pcatename = table.getString("CateName");
                    int status = table.getInt("status");
                    int pCateID = table.getInt("CateID");
                    plant = new Plant(pid, pname, price, pimgPath, pdescription, status, pCateID, pcatename);
                    list.add(plant);
//                    }
                }

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
        return list;
    }

    public static void updatePlantsStatus(int pid, int status) {
        Connection cn = null;
        Plant acc = null;
        //make connection
        try {
            cn = MyLib.makeConnection();

            //viet cac query and exec
            if (cn != null) {
                String sql = "UPDATE dbo.Plants\n"
                        + "SET status = ?\n"
                        + "WHERE PID = ?";
                PreparedStatement pstm = cn.prepareStatement(sql);
                pstm.setInt(1, status);
                pstm.setInt(2, pid);
                pstm.executeUpdate();

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

    public static void addPlants(String pname, int price, String imgpath, String descr, int status, int cateID) throws Exception {
        Connection cn = null;
        try {
            cn = MyLib.makeConnection();

            //viet cac query and exec
            if (cn != null) {
                String sql = "INSERT INTO dbo.Plants VALUES  (?,?,?,?,?,?) ";

                //xu ly dap an
                PreparedStatement pstm = cn.prepareStatement(sql);
                pstm.setString(1, pname);
                pstm.setInt(2, price);
                pstm.setString(3, imgpath);
                pstm.setString(4, descr);
                pstm.setInt(5, status);
                pstm.setInt(6, cateID);
                pstm.executeUpdate();

                //dong connecton
                cn.close();
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
    
    public static void updateInforPlant(int pid, String pname, int price, String imgpath, String des, int status, int cateId) {
        Connection cn = null;
        Plant plant = null;
        //make connection
        try {
            cn = MyLib.makeConnection();

            //viet cac query and exec
            if (cn != null) {
                String sql = "UPDATE dbo.Plants\n"
                        + "SET PName = ?, price = ?, imgPath = ?, description = ?, status = ?, CateID = ?\n"
                        + "WHERE PID = ?";
                PreparedStatement pstm = cn.prepareStatement(sql);
                pstm.setString(1, pname);
                pstm.setInt(2, price);
                pstm.setString(3, imgpath);
                pstm.setString(4, des);
                pstm.setInt(5, status);
                pstm.setInt(6, cateId); 
                pstm.setInt(7, pid);  
                pstm.executeUpdate();

            }

        } catch (Exception e) {
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
}
