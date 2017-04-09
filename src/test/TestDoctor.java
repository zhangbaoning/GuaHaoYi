package test;

import com.opensymphony.xwork2.ActionContext;
import dao.CustomerDao;
import dao.CustomerDaoImpl;
import dao.DoctorDao;
import dao.DoctorDaoImpl;
import entity.Customer;
import entity.Doctor;
import org.junit.Test;

/**
 * Created by zhangbaoning on 2017/3/31.
 */
public class TestDoctor {
    @Test
    public void addCustomer() {
        DoctorDao dao = new DoctorDaoImpl();
        Doctor doctor = dao.get(1);
        CustomerDao customerDao = new CustomerDaoImpl();
        Customer customer = customerDao.get(3);
        doctor.getSet().add(customer);
        dao.save(doctor);
    }

    @Test
    public void order() {
        DoctorDao doctorDao = new DoctorDaoImpl();
        Doctor doctor = doctorDao.get(1);
        Customer customer = new CustomerDaoImpl().get(19);
        doctor.getSet().add(customer);
        doctorDao.update(doctor);
    }
}
