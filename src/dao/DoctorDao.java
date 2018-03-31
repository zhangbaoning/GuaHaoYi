package dao;

import entity.Doctor;

/**
 * Created by zhangbaoning on 2017/3/31.
 */
public interface DoctorDao {
    void save(Doctor doctor);

    void del(Doctor doctor);

    void update(Doctor doctor);

    Doctor get(int cid);

}
