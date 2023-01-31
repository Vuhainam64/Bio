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

    public Equation1() {
        a = b = 0;
    }

    public Equation1(double a, double b) {
        this.a = a;
        this.b = b;
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
    
    public Object getResult() {
        Object result = null;
        if(a==0){
            if(b==0){
                result = "The equation is undefined.";
            }else{
                result = "The equation has no solution.";
            }
        }else{
            result = String.format("The equation is one solution x = %.2f", -b/a);
        }
        return result;
    }
    
}
