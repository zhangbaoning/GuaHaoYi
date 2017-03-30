package dao;

import entity.Customer;

/**
 * Created by zhangbaoning on 2017/3/30.
 */
public interface CustomerDao {
    void save(Customer customer);
    void del(Customer customer);
    void update(Customer customer);
    Customer get(int cid);
}
