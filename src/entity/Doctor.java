package entity;

import java.sql.Date;

/**
 * Created by zhangbaoning on 2017/3/30.
 */
public class Doctor {
    private int did;
    private String dname;
    private short dsex;
    private int dcard;
    private Date dbirth;
    private Integer dtel;
    private String dtitle;
    private Integer cdepart;

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public short getDsex() {
        return dsex;
    }

    public void setDsex(short dsex) {
        this.dsex = dsex;
    }

    public int getDcard() {
        return dcard;
    }

    public void setDcard(int dcard) {
        this.dcard = dcard;
    }

    public Date getDbirth() {
        return dbirth;
    }

    public void setDbirth(Date dbirth) {
        this.dbirth = dbirth;
    }

    public Integer getDtel() {
        return dtel;
    }

    public void setDtel(Integer dtel) {
        this.dtel = dtel;
    }

    public String getDtitle() {
        return dtitle;
    }

    public void setDtitle(String dtitle) {
        this.dtitle = dtitle;
    }

    public Integer getCdepart() {
        return cdepart;
    }

    public void setCdepart(Integer cdepart) {
        this.cdepart = cdepart;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Doctor doctor = (Doctor) o;

        if (did != doctor.did) return false;
        if (dsex != doctor.dsex) return false;
        if (dcard != doctor.dcard) return false;
        if (dname != null ? !dname.equals(doctor.dname) : doctor.dname != null) return false;
        if (dbirth != null ? !dbirth.equals(doctor.dbirth) : doctor.dbirth != null) return false;
        if (dtel != null ? !dtel.equals(doctor.dtel) : doctor.dtel != null) return false;
        if (dtitle != null ? !dtitle.equals(doctor.dtitle) : doctor.dtitle != null) return false;
        if (cdepart != null ? !cdepart.equals(doctor.cdepart) : doctor.cdepart != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = did;
        result = 31 * result + (dname != null ? dname.hashCode() : 0);
        result = 31 * result + (int) dsex;
        result = 31 * result + dcard;
        result = 31 * result + (dbirth != null ? dbirth.hashCode() : 0);
        result = 31 * result + (dtel != null ? dtel.hashCode() : 0);
        result = 31 * result + (dtitle != null ? dtitle.hashCode() : 0);
        result = 31 * result + (cdepart != null ? cdepart.hashCode() : 0);
        return result;
    }
}
