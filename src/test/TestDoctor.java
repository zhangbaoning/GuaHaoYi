package test;

import dao.*;
import entity.Customer;
import entity.Department;
import entity.Doctor;
import org.junit.Test;

import java.util.Iterator;
import java.util.Set;

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

    @Test
    public void get() {

        DepartmentDao dao = new DepartmentDaoImpl();
        Department department = dao.getByHnameAndPname("宝鸡市人民医院", "骨科");
        System.out.println(department.getPid());
        Set set = department.getDset();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Doctor doctor = (Doctor) it.next();
            System.out.println(doctor.toString());
        }

    }
}
