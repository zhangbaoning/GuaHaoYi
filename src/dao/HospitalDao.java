package dao;

import entity.Hospital;

/**
 * Created by zhangbaoning on 2017/4/9.
 */
public interface HospitalDao {
    void save(Hospital hospital);

    void del(Hospital hospital);

    void update(Hospital hospital);

    Hospital get(int cid);

}
