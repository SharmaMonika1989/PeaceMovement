
package peace.enums;


public enum State {
    
     Andhra(1, "Andhra Pradesh(AP)"), 
     Arunachal(2, "Arunachal Pradesh(AR)"), 
     Assam(3, "Assam(AS)"), 
     Bihar(4,"Bihar(BR)"), 
     Chhattisgarh(5,"Chhattisgarh(CG)"),
     Goa(6,"Goa(GA)"),
     Gujarat(7,"Gujarat(GJ)"),
     Haryana(8,"Haryana(HR)"),
     Himachal(9,"Himachal Pradesh(HP)"),
     Jammu(10,"Jammu and Kashmir(JK)"),
     Jharkhand(11,"Jharkhand(JH)"),
     Karnataka(12,"Karnataka(Ka)"),
     Kerala(13,"Kerala(KL)"),
     Madhya(14,"Madhya Pradesh(MP)"),
     Maharashtra(15,"Maharashtra(MH)"),
     Manipur(16,"Manipur(MN)"),
     Meghalaya(17,"Meghalaya(ML)"),
     Mizoram(18,"Mizoram(MZ)"),
     Nagaland(19,"Nagaland(NL)"),
     Orissa(20,"Orissa(OR)"),
     Punjab(21,"Punjab(PB)"),
     Rajasthan(22,"Rajasthan(RJ)"),
     Sikkim(23,"Sikkim(SK)"),
     Tamil(24,"Tamil Nadu(TN)"),
     Tripura(25,"Tripura(TR)"),
     Uttarakhand(26,"Uttarakhand(UK)"),
     Uttar(27,"Uttar Pradesh(UP)"),
     Bengal(28,"West Bengal(WB)"),
     Andaman(29,"Andaman and Nicobar Islands(AN)"),
     Daman(31,"Daman and Diu(DD)"),
     Delhi(32,"Delhi(DL)"),
     Lakshadweep(33,"Lakshadweep(LD)"),
     Pondicherry(34,"Pondicherry(PY)");
    

     

    private final int value;
    private final String name;

    private State(int value, String name) {
        this.value = value;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public int getValue() {
        return value;
    }

    public static State getEnumByValue(Integer value) {
        State[] arr = State.values();
        if (value == null) {
            return null;
        }
        for (State subject : arr) {
            if (subject.getValue() == value) {
                return subject;
            }
        }
        return null;
    }
    
}
