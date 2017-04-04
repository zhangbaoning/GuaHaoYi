package dao;

import entity.Customer;
import entity.Doctor;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

/**
 * Created by zhangbaoning on 2017/3/31.
 */
public class DoctorDaoImpl implements DoctorDao {
    Session session = Factory.getSession().openSession();


    @Override
    public void save(Doctor doctor) {
        Transaction transaction = session.beginTransaction();
        session.save(doctor);
        transaction.commit();
        session.close();
    }

    @Override
    public void del(Doctor doctor) {
        Transaction transaction = session.beginTransaction();
        session.delete(doctor);
        transaction.commit();
        session.close();
    }

    @Override
    public void update(Doctor doctor) {
        Transaction transaction = session.beginTransaction();
        session.update(doctor);
        transaction.commit();
        session.close();
    }

    @Override
    public Doctor get(int cid) {
        Transaction transaction = session.beginTransaction();
        Doctor doctor = session.get(Doctor.class, cid);
        transaction.commit();
        session.close();
        return doctor;
    }

    @Override
    public List getByCard(String dname) {
        return null;
    }
}
