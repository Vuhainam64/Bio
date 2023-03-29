/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import static hash.Hasher.hash;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author vuhai
 */
public class AccountFacade {

    public Account login(String email, String password) throws SQLException, NoSuchAlgorithmException {
        Account account = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("select * from account where email = ? and password = ?");
        stm.setString(1, email);
        stm.setString(2, hash(password));
        //Thực thi lệnh sql
        ResultSet rs = stm.executeQuery();
        //Load dữ liệu vào đối tượng account nếu có
        if (rs.next()) {
            account = new Account();
            account.setId(rs.getInt("id"));
            account.setEmail(rs.getString("email"));
            account.setPassword(rs.getString("password"));
            account.setFullName(rs.getString("fullName"));
            account.setRold(rs.getString("rold"));
        }
        //Đóng kết nối
        con.close();
        return account;
    }
}
