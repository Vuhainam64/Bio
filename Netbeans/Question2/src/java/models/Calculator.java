/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author vuhai
 * JavaBean
 * - Fields duoc khai bao la private
 * - Phai co default contructor
 * - Cung cap geter and setters
 */
public class Calculator {

    //Khai bao field, attribute
    private double num1;
    private double num2;
    private String op;

    //Default Contructor
    public Calculator() {
        num1 = num2 = 0;
        op = "";
    }

    public Calculator(double num1, double num2, String op) {
        this.num1 = num1;
        this.num2 = num2;
        this.op = op;
    }

    public double getNum1() {
        return num1;
    }

    public void setNum1(double num1) {
        this.num1 = num1;
    }

    public double getNum2() {
        return num2;
    }

    public void setNum2(double num2) {
        this.num2 = num2;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    //Dinh nghia read only property result
    public Object getResult() {
        Object result = 0;
        switch (op) {
            case "Add":
                result = num1 + num2;
                break;
            case "Sub":
                result = num1 - num2;
                break;
            case "Mul":
                result = num1 * num2;
                break;
            case "Div":
                if (num2 == 0) {
                    result = "Can't divide by zero";
                } else {
                    result = num1 / num2;
                }
                break;
            default:
                throw new AssertionError();
        }
        return result;
    }

}
