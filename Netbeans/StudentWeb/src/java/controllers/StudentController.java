/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import db.Student;
import db.StudentFacade;
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
 * @author vuhai
 */
@WebServlet(name = "StudentController", urlPatterns = {"/student"})
public class StudentController extends HttpServlet {

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
        String controller = (String) request.getAttribute("controller");
        String action = (String) request.getAttribute("action");
        switch (action) {
            case "index":
                try {
                    StudentFacade sf = new StudentFacade();
                    List<Student> list = sf.select();
                    request.setAttribute("list", list);
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                } catch (SQLException ex) {
                    //Hien trang thong bao loi
                    ex.printStackTrace();//in thong bao loi chi tiet cho developer
                    request.setAttribute("message", ex.getMessage());
                    request.setAttribute("controller", "error");
                    request.setAttribute("action", "error");
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                }
                break;
            case "create"://Hien form de nhap du lieu moi
                try {
                    StudentFacade sf = new StudentFacade();
                    //Doc toan bo table student
                    List<Student> list = sf.select();
                    //truyen list cho view de tao combobox
                    request.setAttribute("list", list);
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                } catch (SQLException ex) {
                    request.setAttribute("message", ex.getMessage());
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                }
                break;
            case "create_handler": {//Xu ly create form
                try {
                    //Đọc dữ liệu từ client gửi lên
                    String name = request.getParameter("name");
                    String genderParam = request.getParameter("gender");
                    Boolean gender = Boolean.parseBoolean(genderParam);
                    String dobParam = request.getParameter("dob");
                    Date dob = new SimpleDateFormat("yyyy-MM-dd").parse(dobParam);
                    //Tao doi tuong Student
                    Student student = new Student(0, name, true, (java.sql.Date) dob);
                    //Luu Student vao request de bao ton trang thai cua form
                    request.setAttribute("student", student);
                    //Doc toan bo table brand
                    StudentFacade sf = new StudentFacade();
                    List<Student> list = sf.select();
                    //truyen list cho view de tao combobox
                    request.setAttribute("list", list);
                    //Cập nhật dữ liệu vào db
                    sf.create(student);
                    //Hiển thị danh sách các mẫu tin của table student
                    response.sendRedirect(request.getContextPath() + "/student/index.do");
                } catch (Exception ex) {
                    //Hien create form de nhap lai du lieu
                    ex.printStackTrace();//in thong bao loi chi tiet cho developer
                    request.setAttribute("action", "create");
                    request.setAttribute("message", ex.getMessage());
                    request.getRequestDispatcher("/WEB-INF/layouts/main.jsp").forward(request, response);
                }
                break;

            }
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
