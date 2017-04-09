package test;

import dao.*;
import entity.Department;
import entity.Doctor;
import entity.Hospital;
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

    @Test
    public void addHosptal() {
        Department department = new Department();
        department.setPname("骨科");
        department.setPid(2);
        Hospital hospital = new Hospital();
        hospital.setHid(1);
        hospital.setHname("宝鸡市人民医院");
        hospital.setHaddress("经二路");
        hospital.setHtel("0917");
//        hospital.getDepart_id().add(department);
//        department.getHospital_id().add(hospital);
        HospitalDao hospitalDao = new HospitalDaoImpl();
        DepartmentDao departmentDao = new DepartmentDaoImpl();
        hospitalDao.save(hospital);
        departmentDao.save(department);


    }

    @Test
    public void testUpdate() {
        HospitalDao hospitalDao = new HospitalDaoImpl();
        DepartmentDao departmentDao = new DepartmentDaoImpl();
        Hospital hospital = hospitalDao.get(1);
        Department department = departmentDao.get(2);
        System.out.println(hospital.toString());
        System.out.println(department.toString());
        hospital.getDepart_id().add(department);
        department.getHospital_id().add(hospital);
        hospitalDao.update(hospital);
        departmentDao.update(department);
    }

    @Test
    public void getByHnameAndPname() {
        DepartmentDao dao = new DepartmentDaoImpl();
        Department department = dao.getByHnameAndPname("宝鸡市人民医院", "骨科");
        System.out.println(department.toString());
    }
}
