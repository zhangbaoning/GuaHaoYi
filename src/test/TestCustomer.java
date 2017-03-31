package test;

import action.CustomerAction;
import action.CustomerActionImpl;
import dao.CustomerDao;
import dao.CustomerDaoImpl;
import entity.Customer;
import org.junit.Test;

import java.sql.Date;
import java.util.Iterator;

/**
 * Created by zhangbaoning on 2017/3/30.
 */
public class TestCustomer {
    @Test
    public void add(){
        Customer customer = new Customer();
        customer.setCname("张宝宁");
        customer.setCsex((short) 1);
        customer.setCtel(1550918156);
        customer.setCpassword("123456");
        customer.setCcard("610321199405263136");
        customer.setCaddress("sdkdk");
        customer.setCbirth(new Date(2001,1,2));
        CustomerDao dao = new CustomerDaoImpl();
        dao.save(customer);
    }

    public Customer get(int id){
        //Customer customer = new Customer();
        CustomerDao dao = new CustomerDaoImpl();
        Customer customer = dao.get(id);
        System.out.println(customer.toString());
        return customer;
    }
    @Test
    public void del(){
        Customer customer = new TestCustomer().get(2);
        CustomerDao dao = new CustomerDaoImpl();
        dao.del(customer);
    }

    @Test
    public void age() {
        Customer customer = new TestCustomer().get(3);
        System.out.println(customer.getCage());

    }

    @Test
    public void birth() {
        Customer customer = new TestCustomer().get(3);
        System.out.println(customer.getCbirth());

    }

    @Test
    public void byName() {
        CustomerDao dao = new CustomerDaoImpl();
        Iterator it = dao.getByCard("610321199405263136").iterator();
        while (it.hasNext()) {
            Customer customer = (Customer) it.next();
            System.out.println(customer.toString());
        }
    }
}
