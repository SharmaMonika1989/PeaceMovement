package peace.utility;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class DateUtility {

    public static String dateToString(Date date) {
        if (date == null) {
            return null;
        }
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        String sdate = formatter.format(date);
        return sdate;
    }
    public static String dateTimeToString(Date date) {
        if (date == null) {
            return null;
        }
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss a");
        String sdate = formatter.format(date);
        return sdate;
    }
      public static String dateToStringFormate(Date date) {
        if (date == null) {
            return null;
        }
        DateFormat formatter = new SimpleDateFormat("dd.MM.yyyy");
        String sdate = formatter.format(date);
        return sdate;
    }
       public static String dateTimeToStringFormate(Date date) {
        if (date == null) {
            return null;
        }
        DateFormat formatter = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss a");
        String sdate = formatter.format(date.getTime());
        return sdate;
    }

    public static Date stringToDate(String date) {
        if (date == null) {
            return null;
        }
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
        Date convertDate = null;
        try {
            convertDate = (Date) formatter.parse(date);
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
        return convertDate;
    }
    public static Date stringToDateTime(String date) {
        if (date == null) {
            return null;
        }
        DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        Date convertDate = null;
        try {
            convertDate = (Date) formatter.parse(date);
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
        return convertDate;
    }

    public static String dateToStringInDataBase(Date date) {
        if (date == null) {
            return null;
        }
        DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String sdate = formatter.format(date);
        return sdate;
    }

    public static Object[] timeToString(Date time) {
        if (time != null) {
            DateFormat dateFormat = new SimpleDateFormat("hh:mm a");
            String ctime = dateFormat.format(time);

            return new Object[]{ctime.substring(0, 2), ctime.substring(3, 5), ctime.substring(6)};
        } else {
            return new Object[]{null, null, null};
        }


    }

    public static java.sql.Date dateToSQLDate(java.util.Date date){
        if(date==null){
            return null;
        }else{
            return new java.sql.Date(date.getTime());
        }
    }

    public static Date stringToTime(String time) {
        DateFormat formatter = new SimpleDateFormat("hh:mm a");
        Date convertDate = null;
        try {
            convertDate = (Date) formatter.parse(time);
        } catch (ParseException ex) {
            ex.printStackTrace();
        }
        return convertDate;

    }

    public static List<LabelValueBean> getTime(int startTime, int endTime) {
        List<LabelValueBean> beans = new ArrayList<LabelValueBean>();
        String str = "";
        for (int i = startTime; i <= endTime; i++) {
            if (i < 10) {
                str = "0" + i;
            } else {
                str = "" + i;
            }
            LabelValueBean bean = new LabelValueBean();
            bean.setValue(str);
            beans.add(bean);
        }
        return beans;
    }

    public static Object[] calculateDuration(Date startDate, Date endDate) {

        if (startDate != null && endDate != null) {
            Calendar startc = Calendar.getInstance();
            Calendar endc = Calendar.getInstance();
            startc.setTime(startDate);
            endc.setTime(endDate);
            int year = endc.get(Calendar.YEAR) - startc.get(Calendar.YEAR);
            int month = endc.get(Calendar.MONTH) - startc.get(Calendar.MONTH);
            int day = Math.abs(endc.get(Calendar.DAY_OF_MONTH) - startc.get(Calendar.DAY_OF_MONTH));

            if (year <= 0) {
                year = 0;
            }

            if (month < 0) {
                month = 0;
            } else {
                month += 1;
            }
            if (day <= 0) {
                day = 0;
            }
            return new Object[]{year, month, day};
        } else {
            return new Object[]{null, null, null};
        }


    }

    public static Date getDob(Integer age) {
        Calendar currentDate = Calendar.getInstance();
        int year = currentDate.get(Calendar.YEAR) - age;
        currentDate.set(1,year);
        return currentDate.getTime();
    }

    public static Date getDobDate(Integer age, Date date) {
        Calendar currentDate = Calendar.getInstance();
        currentDate.setTime(date);
        int year = currentDate.get(Calendar.YEAR);
        int month = currentDate.get(Calendar.MONTH);
        int day = currentDate.get(Calendar.DAY_OF_MONTH);
        currentDate.set(year, month, day);
        int year1 = currentDate.get(Calendar.YEAR) - age;
        currentDate.set(year1, month, day);
        return currentDate.getTime();
    }

      public static String stringToDateInDataBase(String date) {
        DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String sdate = formatter.format(stringToDate(date));
        return sdate;
    }

    public static Object stringToDate(Date date) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

  
}
