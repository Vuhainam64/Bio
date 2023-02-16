/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.Toy;
import db.ToyFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PHT
 */
@WebServlet(name = "ToyController", urlPatterns = {"/toy"})
public class ToyController extends HttpServlet {

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
        String controller = (String)request.getAttribute("controller");
        String action = (String)request.getAttribute("action");
        ToyFacade tf = new ToyFacade();
        switch (action) {
            case "index":
                try {
                    List<Toy> list = tf.select();
                    request.setAttribute("list", list);
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                } catch (SQLException ex) {
                    //Hien trang thong bao loi
                    ex.printStackTrace();//in thong bao loi chi tiet cho developer
                    request.setAttribute("message", ex.getMessage());
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                }
                break;
            case "edit"://Hien form de sua du lieu
                try {
                    //Đọc mẫu tin cần sửa vào đối tượng toy
                    String id = request.getParameter("id");
                    Toy toy = tf.read(id);
                    //Lưu toy vào request để truyền cho view edit.jsp
                    request.setAttribute("toy", toy);
                    //Chuyển request & response đến view edit.jsp để xử lý tiếp
                    request.getRequestDispatcher("/edit.jsp").forward(request, response);
                } catch (SQLException ex) {
                    //Hien trang thong bao loi
                    ex.printStackTrace();//in thong bao loi chi tiet cho developer
                    request.setAttribute("message", ex.getMessage());
                    request.getRequestDispatcher("/error.jsp").forward(request, response);
                }
                break;
            case "edit_handler"://Luu thong tin vao db
                try {
                    //Đọc dữ liệu từ client gửi lên
                    String id = request.getParameter("id");
                    String name = request.getParameter("name");
                    double price = Double.parseDouble(request.getParameter("price"));
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    Date expDate = sdf.parse(request.getParameter("expDate"));
                    String brandId = request.getParameter("brandId");
                    //Cập nhật dữ liệu vào db
                    Toy toy = new Toy(id, name, price, expDate, brandId);
                    tf.update(toy);
                    //Hiển thị danh sách các mẫu tin của table toy
                    /*
                    List<Toy> list = tf.select();
                    request.setAttribute("list", list);
                    request.getRequestDispatcher("/toy.jsp").forward(request, response);
                    */
                    response.sendRedirect(request.getContextPath() + "/toy?op=list");
                } catch (Exception ex) {
                    //Hien trang thong bao loi
                    ex.printStackTrace();//in thong bao loi chi tiet cho developer
                    request.setAttribute("message", ex.getMessage());
                    request.getRequestDispatcher("/error.jsp").forward(request, response);
                }
                break;
            case "delete":
                try {
                    String id = request.getParameter("id");
                    tf.delete(id);
                    //Chuyen den trang /toy?op=list
                    response.sendRedirect(request.getContextPath() + "/toy?op=list");
                } catch (SQLException ex) {
                    //Hien trang thong bao loi
                    ex.printStackTrace();//in thong bao loi chi tiet cho developer
                    request.setAttribute("message", ex.getMessage());
                    request.getRequestDispatcher("/error.jsp").forward(request, response);
                }
                break;
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