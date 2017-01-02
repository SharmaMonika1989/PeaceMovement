/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package peace.services;

/**
 *
 * @author monika
 */
public class TestServices {
    public static void main(String args []){
        UserServices services = new UserServices();
        
        System.out.println("REG ID: " + services.generateRegId("ALLAHABAD", "BIHAR(BH)"));
    }
}
