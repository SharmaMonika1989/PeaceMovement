/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author tarun jaiswal
 */
public class test {

    public static void main(String agrgs[]) {
        System.out.println("hello");
        String state = "Utter Pradesh";
        int len = state.length();
        char fstr = state.charAt(0);
        char lstr = ' ';
        int count = 0;
        for (int i = 0; i <= state.length() - 1; i++) {

            char s = state.charAt(i);
            // System.out.println("," + s);
            //System.out.println("c=" + count);
            count = count + 1;
            if (s == ' ') {
                System.out.println("char" + state.charAt(count));
                lstr = state.charAt(count);
                // sstr = state.substring(count, 1);
                //System.out.println(sstr);
            }

        }
        System.out.println("str=" + fstr + lstr);

        int pincode = 462008;
        int id = 100;
        String rid;
        String stateabr = "";
        stateabr = stateabr + fstr + lstr;

        String zerostr = "00000001";
        rid = stateabr + pincode + zerostr;
        System.out.println("RID=" + rid.length());
        String tens;
        tens = " ";
        tens = rid.substring(8, 16);
        int num = Integer.parseInt(tens);
        System.out.println("tens=" + tens);
        if (num < 10) {
            zerostr = "0000000";
            rid = stateabr + pincode + zerostr + num;
            System.out.println("ridnew=" + rid);
            System.out.println("id lenth" + rid.length());
        }
        if (num >= 10 && num <= 99) {
            zerostr = "000000";
            rid = stateabr + pincode + zerostr + num;
            System.out.println("rid2" + rid);
            System.out.println("id lenth" + rid.length());
        }
        if (num >= 100 && num <= 999) {
            zerostr = "00000";
            rid = stateabr + pincode + zerostr + num;
            System.out.println("rid2" + rid);
            System.out.println("id lenth" + rid.length());
        }
        if (num >= 1000 && num <= 9999) {
            zerostr = "0000";
            rid = stateabr + pincode + zerostr + num;
            System.out.println("rid2" + rid);
            System.out.println("id lenth" + rid.length());
        }
        if (num >= 10000 && num <= 99999) {
            zerostr = "000";
            rid = stateabr + pincode + zerostr + num;
            System.out.println("rid2" + rid);
            System.out.println("id lenth" + rid.length());
        }
        if (num >= 100000 && num <= 999999) {
            zerostr = "00";
            rid = stateabr + pincode + zerostr + num;
            System.out.println("rid2" + rid);
            System.out.println("id lenth" + rid.length());
        }
        if (num >= 1000000 && num <= 9999999) {
            zerostr = "0";
            rid = stateabr + pincode + zerostr + num;
            System.out.println("rid2" + rid);
            System.out.println("id lenth=" + rid.length());
        }

    }

}
