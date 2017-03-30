package dao;

import entity.Customer;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 * Created by zhangbaoning on 2017/3/30.
 */
public class CustomerDaoImpl implements CustomerDao {
    Session session = Factory.getSession().openSession();
    @Override
    public void save(Customer customer) {
        Transaction transaction = session.beginTransaction();
        session.save(customer);
        transaction.commit();
    }

    @Override
    public void del(Customer customer) {
        Transaction transaction = session.beginTransaction();
        session.delete(customer);
        transaction.commit();
    }

    @Override
    public void update(Customer customer) {
        Transaction transaction = session.beginTransaction();
        session.update(customer);
        transaction.commit();
    }

    @Override
    public Customer get(int cid) {
        Transaction transaction = session.beginTransaction();
        Customer customer = session.get(Customer.class,cid);
        transaction.commit();
        return customer;
    }
}
