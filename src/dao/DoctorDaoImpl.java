package dao;

import entity.Customer;
import entity.Doctor;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.List;
import java.util.Queue;

/**
 * Created by zhangbaoning on 2017/3/31.
 */
public class DoctorDaoImpl implements DoctorDao {


    @Override
    public void save(Doctor doctor) {
        Session session = Factory.getSession().openSession();

        Transaction transaction = session.beginTransaction();
        session.save(doctor);
        transaction.commit();
        session.close();
    }

    @Override
    public void del(Doctor doctor) {
        Session session = Factory.getSession().openSession();

        Transaction transaction = session.beginTransaction();
        session.delete(doctor);
        transaction.commit();
        session.close();
    }

    @Override
    public void update(Doctor doctor) {
        Session session = Factory.getSession().openSession();

        Transaction transaction = session.beginTransaction();
        session.update(doctor);
        transaction.commit();
        session.close();
    }

    @Override
    public Doctor get(int cid) {
        Session session = Factory.getSession().openSession();

        Transaction transaction = session.beginTransaction();
        Doctor doctor = session.get(Doctor.class, cid);
        transaction.commit();
        session.close();
        return doctor;
    }


}
