package dao;

import entity.Department;

import java.util.List;

/**
 * Created by zhangbaoning on 2017/4/9.
 */
public interface DepartmentDao {
    void save(Department customer);

    void del(Department customer);

    void update(Department customer);

    Department get(int cid);

}
