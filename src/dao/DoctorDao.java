package dao;

import entity.Customer;
import entity.Doctor;

import java.util.List;

/**
 * Created by zhangbaoning on 2017/3/31.
 */
public interface DoctorDao {
    void save(Doctor doctor);

    void del(Doctor doctor);

    void update(Doctor doctor);

    Doctor get(int cid);

}
