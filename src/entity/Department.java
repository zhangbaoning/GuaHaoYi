package entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by zhangbaoning on 2017/3/31.
 */
public class Department {
    private int pid;
    private String pname;
    private Integer phospital;
    private Set dset = new HashSet();
    private Set hospital_id = new HashSet();

    public Set getHospital_id() {
        return hospital_id;
    }

    public void setHospital_id(Set hospital_id) {
        this.hospital_id = hospital_id;
    }

    public Set getDset() {
        return dset;
    }

    public void setDset(Set dset) {
        this.dset = dset;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public Integer getPhospital() {
        return phospital;
    }

    public void setPhospital(Integer phospital) {
        this.phospital = phospital;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Department that = (Department) o;

        if (pid != that.pid) return false;
        if (pname != null ? !pname.equals(that.pname) : that.pname != null) return false;
        if (phospital != null ? !phospital.equals(that.phospital) : that.phospital != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = pid;
        result = 31 * result + (pname != null ? pname.hashCode() : 0);
        result = 31 * result + (phospital != null ? phospital.hashCode() : 0);
        return result;
    }
}
