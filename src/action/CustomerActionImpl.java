package action;

import com.opensymphony.xwork2.ActionSupport;
import dao.CustomerDao;
import dao.CustomerDaoImpl;
import entity.Customer;


/**
 * Created by zhangbaoning on 2017/3/31.
 */
public class CustomerActionImpl extends ActionSupport implements CustomerAction {
    //TODO 以后改成Model

    String name;
    String password;
    int tel;
    String card;
    short sex;

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

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public short getSex() {
        return sex;
    }

    public void setSex(short sex) {
        this.sex = sex;
    }


    @Override
    public String register() {


        /*
        注册必须输入姓名、身份证号、性别、密码、电话号码
        电话号码可更新
        地址可随后设置
        * */
        System.out.println("正在运行");
        Customer customer = new Customer();
        customer.setCname(name);
        customer.setCpassword(password);
        customer.setCcard(card);
        customer.setCsex(sex);
        customer.setCtel(tel);
        customer.setCage(customer.getCage());

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
