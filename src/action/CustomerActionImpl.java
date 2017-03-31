package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.CustomerDao;
import dao.CustomerDaoImpl;
import entity.Customer;

import java.sql.Date;
import java.util.Iterator;
import java.util.List;


/**
 * Created by zhangbaoning on 2017/3/31.
 */
public class CustomerActionImpl extends ActionSupport implements CustomerAction {
    //TODO 以后改成Model

    String name;
    String password;
    String tel;
    String card;
    String sex;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public String login() {
        CustomerDao dao = new CustomerDaoImpl();
        List list = dao.getByCard(card);
        Customer customer = null;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                customer = (Customer) it.next();
            }
            System.out.println(customer.getCpassword() + " " + password);
            if (customer.getCpassword().equals(password)) {
                return LOGIN;
            }
        }
        return ERROR;
    }

    @Override
    public String register() {


        /*
        *注册必须输入姓名、身份证号、性别、密码、电话号码
        *电话号码可更新
        *地址可随后设置
        * */
        System.out.println("正在运行");
        Customer customer = new Customer();
        customer.setCname(name);
        customer.setCpassword(password);
        customer.setCcard(card);
        customer.setCsex(sex);
        customer.setCtel(tel);
        customer.setCage(customer.getCage());
        //设置生日
        String ageStirng = card.substring(6, 14);
        int year = Integer.parseInt(ageStirng.substring(0, 4));
        int month = Integer.parseInt(ageStirng.substring(4, 6));
        int day = Integer.parseInt(ageStirng.substring(6, 8));
     /* @param year the year minus 1900; must be 0 to 8099.
        (Note that 8099 is 9999 minus 1900.)
      * @param month 0 to 11
      */
        customer.setCbirth(new Date(year - 1900, month - 1, day));
        System.out.println(year + " " + month + " " + day);
        CustomerDao dao = new CustomerDaoImpl();
        System.out.println(customer.toString());
        dao.save(customer);
        return INPUT;
    }

    @Override
    public String order() {
        return null;
    }

    @Override
    public String infoUpdate() {
        return null;
    }
}
