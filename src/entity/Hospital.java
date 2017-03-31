package entity;

/**
 * Created by zhangbaoning on 2017/3/31.
 */
public class Hospital {
    private int hid;
    private String hname;
    private String haddress;
    private String htel;

    public int getHid() {
        return hid;
    }

    public void setHid(int hid) {
        this.hid = hid;
    }

    public String getHname() {
        return hname;
    }

    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getHaddress() {
        return haddress;
    }

    public void setHaddress(String haddress) {
        this.haddress = haddress;
    }

    public String getHtel() {
        return htel;
    }

    public void setHtel(String htel) {
        this.htel = htel;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Hospital hospital = (Hospital) o;

        if (hid != hospital.hid) return false;
        if (hname != null ? !hname.equals(hospital.hname) : hospital.hname != null) return false;
        if (haddress != null ? !haddress.equals(hospital.haddress) : hospital.haddress != null) return false;
        if (htel != null ? !htel.equals(hospital.htel) : hospital.htel != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = hid;
        result = 31 * result + (hname != null ? hname.hashCode() : 0);
        result = 31 * result + (haddress != null ? haddress.hashCode() : 0);
        result = 31 * result + (htel != null ? htel.hashCode() : 0);
        return result;
    }
}
