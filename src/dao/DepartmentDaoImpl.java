package dao;

import entity.Department;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Created by zhangbaoning on 2017/4/9.
 */
public class DepartmentDaoImpl implements DepartmentDao {
    Session session = Factory.getSession().openSession();

    @Override
    public void save(Department department) {
        Transaction transaction = session.beginTransaction();
        session.save(department);
        transaction.commit();

        session.close();
    }

    @Override
    public void del(Department department) {
        Transaction transaction = session.beginTransaction();
        session.save(department);
        transaction.commit();

        session.close();
    }

    @Override
    public void update(Department department) {
        Transaction transaction = session.beginTransaction();
        session.save(department);
        transaction.commit();

        session.close();
    }

    @Override
    public Department get(int cid) {
        return null;
    }
}
