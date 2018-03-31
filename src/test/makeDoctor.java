package test;

/**
 * Created by zhangbaoning on 2017/4/14.
 */
public class makeDoctor {


    public static void main(String[] args) {
        String[] firstname = {"赵", "钱", "孙", "李", "周", "吴", "郑", "王"};
        String[] midname = {"瑞", "浩", "然", "玉", "琪", "强", "杰", "瑞"};
        String[] lastname = {"向", "东", "爱", "过", "静", "咪", "欣", "龙"};
        short sex;
        String[] ditile = {"主任", "医师", "医士", "副主任"};
        for (int c = 0; c < 100; c++) {
            String name = firstname[(int) (Math.random() * 10 % 8)]
                    + midname[(int) (Math.random() * 10 % 8)] + lastname[(int) (Math.random() * 10 % 8)];
            String tel = "13";
            for (int i = 0; i < 9; i++) {
                tel += "" + ((int) (Math.random() * 10));
            }
            sex = (short) ((short) Math.random() * 10 % 2 + 1);
            int year = (int) (Math.random() * 10) + 1900;

            int month = (int) (Math.random() * 100) % 12 + 1;
            String days = null;
            String months = null;
            if (month < 10) {
                months = "0" + month;
            } else {
                months = "" + month;
            }

            int day = (int) (Math.random() * 1000) % 30 + 1;
            if (day < 10) {
                days = "0" + day;
            } else {
                days = "" + day;
            }
            int six = (int) (Math.random() * 1000000) + 1;
            int four = (int) (Math.random() * 10000);
            String card = "" + six;
            String title = ditile[(int) (Math.random() * 100 % 4)];
            int depart = c;
            int total = 50;
            int free = 50;
            System.out.println("insert into doctor values(" + (c + 1) + ",'" + name + "'," + sex + ",'" + card + "','" +
                    ("" + year + months + days) + "','" + tel + "','" + title + "'," + depart + "," + total + "," + free + ");");

        }


    }
}


