package dao;

import entity.Doctor;
import entity.Hospital;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Created by zhangbaoning on 2017/4/9.
 */
public class HospitalDaoImpl implements HospitalDao {
    Session session = Factory.getSession().openSession();

    @Override
    public void save(Hospital hospital) {
        Transaction transaction = session.beginTransaction();
        session.save(hospital);
        transaction.commit();
        session.close();
    }

    @Override
    public void del(Hospital hospital) {

    }

    @Override
    public void update(Hospital hospital) {

    }

    @Override
    public Hospital get(int hid) {
        Transaction transaction = session.beginTransaction();
        Hospital hospital = session.get(Hospital.class, hid);
        transaction.commit();
        session.close();
        return hospital;
    }
}
