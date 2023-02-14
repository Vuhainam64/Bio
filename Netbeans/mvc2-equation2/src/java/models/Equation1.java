/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author PHT
 */
public class Equation1 {

    private double a;
    private double b;
    private double c;

    public Equation1() {
        a = b = c = 0;
    }

    public Equation1(double a, double b, double c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public double getA() {
        return a;
    }

    public void setA(double a) {
        this.a = a;
    }

    public double getB() {
        return b;
    }

    public void setB(double b) {
        this.b = b;
    }

    public double getC() {
        return c;
    }

    public void setC(double c) {
        this.c = c;
    }

    public Object getResult() {
        Object result = 0;
        if (a == 0) {
            if (b == 0) {
                result = "Phương trình vô nghiệm!";
            } else {
                result = "Phương trình có một nghiệm: "
                        + "x = " + (-c / b);
            }
            return result;
        }

        double delta = b * b - 4 * a * c;
        double x1;
        double x2;
        // tính nghiệm
        if (delta > 0) {
            x1 = (double) ((-b + Math.sqrt(delta)) / (2 * a));
            x2 = (double) ((-b - Math.sqrt(delta)) / (2 * a));
            result = "Phương trình có 2 nghiệm là: "
                    + "x1 = " + x1 + " và x2 = " + x2;
        } else if (delta == 0) {
            x1 = (-b / (2 * a));
            result = "Phương trình có nghiệm kép: "
                    + "x1 = x2 = " + x1;
        } else {
            result = "Phương trình vô nghiệm!";
        }
        return result;
    }

}
