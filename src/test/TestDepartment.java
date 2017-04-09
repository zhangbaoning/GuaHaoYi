package test;

import dao.DepartmentDao;
import dao.DepartmentDaoImpl;
import dao.DoctorDaoImpl;
import entity.Department;
import entity.Doctor;
import org.junit.Test;

import java.lang.annotation.Target;

/**
 * Created by zhangbaoning on 2017/4/9.
 */
public class TestDepartment {
    @Test
    public void addDocter() {

        Department department = new Department();
        department.setPname("西安市人民医院");
        department.setPid(1);
        department.setPhospital(null);
        Doctor doctor = new DoctorDaoImpl().get(1);
        department.getDset().add(doctor);
        DepartmentDao dao = new DepartmentDaoImpl();
        dao.save(department);
    }
}
