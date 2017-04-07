package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import dao.CustomerDao;
import dao.CustomerDaoImpl;
import dao.DoctorDao;
import dao.DoctorDaoImpl;
import entity.Customer;
import entity.Doctor;

import java.sql.Date;
import java.util.Iterator;
import java.util.List;


/**
 * Created by zhangbaoning on 2017/3/31.
 * 此命名方式中从表单得到的对象为customerget
 * 从数据库中得到为customer
 */
public class CustomerActionImpl extends ActionSupport implements CustomerAction, ModelDriven {
    private Customer customerget = new Customer();

    @Override
    public Customer getModel() {
        return customerget;
    }

    @Override
    public String login() {
        CustomerDao dao = new CustomerDaoImpl();
        System.out.println();
        List list = dao.getByCard(customerget.getCcard());
        System.out.println(customerget.getCcard());
        System.out.println(customerget.getCpassword());
        Customer customer = null;
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                customer = (Customer) it.next();
            }
            if (customer.getCpassword().equals(customerget.getCpassword())) {
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
        customer.setCname(customerget.getCname());
        customer.setCpassword(customerget.getCpassword());
        customer.setCcard(customerget.getCcard());
        customer.setCsex(customerget.getCsex());
        customer.setCtel(customerget.getCtel());
        customer.setCage(customerget.getCage());
        //设置生日
        String ageStirng = customerget.getCcard().substring(6, 14);
        int year = Integer.parseInt(ageStirng.substring(0, 4));
        int month = Integer.parseInt(ageStirng.substring(4, 6));
        int day = Integer.parseInt(ageStirng.substring(6, 8));
        /** @param year the year minus 1900; must be 0 to 8099.
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
    /**
     * @param 输入医生的id和患者的id，获得对象后进行挂号
     */
    public String order(int did, int cid) {
        //TODO 未测试
        /**
         *在界面上获得了医生的对象，通过一对多的方法，将患者添加到医生的Set上面
         */
        DoctorDao doctorDao = new DoctorDaoImpl();
        Doctor doctor = doctorDao.get(did);
        CustomerDao customerDao = new CustomerDaoImpl();
        Customer customer = customerDao.get(cid);
        int free = doctor.getDfree() - 1;
        if (free > 0) {    //医生的排号没挂完
            if (customer.getDoctor() != null) { //患者没有挂号
                doctor.setDfree(free);
                doctor.getSet().add(customer);
                doctorDao.save(doctor);
                return SUCCESS;
            }
        }
        return ERROR;
    }

    @Override
    public String infoUpdate() {
        //密码、地址、和电话可以修改
        Customer customer = new Customer();
        customer.setCpassword(customerget.getCpassword());
        customer.setCaddress(customerget.getCaddress());
        customer.setCtel(customerget.getCtel());
        CustomerDao dao = new CustomerDaoImpl();
        dao.save(customer);
        return SUCCESS;
    }


}
