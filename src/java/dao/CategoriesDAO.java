/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import DBUtils.MyLib;
import dto.Categories;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author LENOVO
 */
public class CategoriesDAO {

    public static ArrayList<Categories> getPlant(String keyword, String searchby) {
        ArrayList<Categories> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.MyLib.makeConnection();
            if (cn != null && searchby != null) {
                String sql = "SELECT CateID, CateName\n"
                        + "FROM dbo.Categories\n";
                if (searchby.equalsIgnoreCase("byname")) {
                    sql = sql + "WHERE Categories.CateName LIKE ?";
                } else {
                    sql = sql + "WHERE Categories.CateID LIKE ?";
                }
                PreparedStatement pst = cn.prepareStatement(sql);
                pst.setString(1, "%" + keyword + "%");
                ResultSet rs = pst.executeQuery();
                if (rs != null) {
                    while (rs.next()) {

                        int id = rs.getInt("CateID");
                        String name = rs.getString("CateName");

                        Categories cate = new Categories(id, name);
                        list.add(cate);

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

    public static ArrayList<Categories> getPlant(int cateid) throws Exception {
        ArrayList<Categories> list = new ArrayList<>();
        Connection cn = null;
        try {
            cn = DBUtils.MyLib.makeConnection();

            String sql = "SELECT CateID, CateName\n"
                    + "FROM dbo.Categories\n"
                    + "WHERE Categories.CateID LIKE ?";

            PreparedStatement pst = cn.prepareStatement(sql);
            pst.setInt(1, cateid);
            ResultSet rs = pst.executeQuery();
            if (rs != null) {
                while (rs.next()) {

                    cateid = rs.getInt("CateID");
                    String name = rs.getString("CateName");

                    Categories cate = new Categories(cateid, name);
                    list.add(cate);

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

    public static void addCate(String name) throws Exception {
        Connection cn = null;
        try {
            cn = MyLib.makeConnection();

            //viet cac query and exec
            if (cn != null) {
                String sql = "INSERT INTO dbo.Categories(CateName) VALUES  (?) ";

                //xu ly dap an
                PreparedStatement pstm = cn.prepareStatement(sql);
                pstm.setString(1, name);

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

    public static void updateInforCate(int cateid, String name) {
        Connection cn = null;
        Categories cate = null;
        //make connection
        try {
            cn = MyLib.makeConnection();

            //viet cac query and exec
            if (cn != null) {
                String sql = "UPDATE dbo.Categories\n"
                        + "SET CateName = ?\n"
                        + "WHERE CateID = ?";
                PreparedStatement pstm = cn.prepareStatement(sql);
                pstm.setString(1, name);
                pstm.setInt(2, cateid);
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
