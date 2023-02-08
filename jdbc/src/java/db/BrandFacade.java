/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vuhai
 */
public class BrandFacade {
        public List<Brand> select() throws SQLException{
        List<Brand> list = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DB.getConnection();
        try {
            //Tạo doi tuong stament
            Statement stm = con.createStatement();
            //thuc thi lenh SELECT
            ResultSet rs = stm.executeQuery("select * from brand");
            list = new ArrayList<>();
            while (rs.next()) {
                Brand brand = new Brand();
                brand.setId(rs.getString("id"));
                brand.setName(rs.getString("name"));
                list.add(brand);
            }
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }
}
