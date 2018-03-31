package dao;

import entity.Department;

/**
 * Created by zhangbaoning on 2017/4/9.
 */
public interface DepartmentDao {
    void save(Department customer);

    void del(Department customer);

    void update(Department customer);

    Department get(int cid);

    //使用医院名和部门名查出医生的集合
    Department getByHnameAndPname(String hname, String pname);
}
