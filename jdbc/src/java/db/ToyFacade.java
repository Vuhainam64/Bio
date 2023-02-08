/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author vuhai
 */
public class ToyFacade {
    //
    public List<Toy> select() throws SQLException{
        List<Toy> list = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DB.getConnection();
            //Tạo doi tuong stament
            Statement stm = con.createStatement();
            //thuc thi lenh SELECT
            ResultSet rs = stm.executeQuery("select * from toy");
            list = new ArrayList<>();
            while (rs.next()) {
                Toy toy = new Toy();
                toy.setId(rs.getString("id"));
                toy.setName(rs.getString("name"));
                toy.setPrice(rs.getDouble("price"));
                toy.setExpDate(rs.getDate("expDate"));
                toy.setBrandId(rs.getString("brand"));
                list.add(toy);
            }
            con.close();

        return list;
    }
    
    public void delete(String id) throws SQLException{
        //Tạo connection để kết nối vào DBMS
        Connection con = DB.getConnection();
            //Tạo doi tuong Preparestament
            PreparedStatement stm = con.prepareStatement("delete from toy where id = ?");
            stm.setString(1, id);
            //thuc thi lenh SQL
            int count = stm.executeUpdate(); // Chỉ có tác dụng đếm thui xoá cũng dc
            con.close();
    }
}
