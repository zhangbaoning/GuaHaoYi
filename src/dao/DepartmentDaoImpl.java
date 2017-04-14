package dao;

import entity.Department;
import entity.Doctor;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;

/**
 * Created by zhangbaoning on 2017/4/9.
 */
public class DepartmentDaoImpl implements DepartmentDao {


    @Override
    public void save(Department department) {
        Session session = Factory.getSession().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(department);
        transaction.commit();

        session.close();
    }

    @Override
    public void del(Department department) {
        Session session = Factory.getSession().openSession();
        Transaction transaction = session.beginTransaction();
        session.save(department);
        transaction.commit();

        session.close();
    }

    @Override
    public void update(Department department) {
        Session session = Factory.getSession().openSession();
        Transaction transaction = session.beginTransaction();
        session.update(department);
        transaction.commit();

        session.close();
    }

    @Override
    public Department get(int cid) {
        Session session = Factory.getSession().openSession();
        Transaction transaction = session.beginTransaction();
        Department department = session.get(Department.class, cid);
        transaction.commit();
        session.close();
        return department;
    }

    @Override
    public Department getByHnameAndPname(String hname, String pname) {
        Session session = Factory.getSession().openSession();
        String hql = "select d from Department d,Hospital  h where d.pname=:department and h.hname=:hospital and h.hid =d.phospital";
        Query query = session.createQuery(hql);
        query.setString("department", pname);
        query.setString("hospital", hname);
        Department department = (Department) query.uniqueResult();

        return department;
    }

}
