package entity;

import java.sql.Date;

/**
 * Created by zhangbaoning on 2017/3/30.
 */
public class Customer {
    private int cid;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    private String cname;

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    private int ccard;

    public int getCcard() {
        return ccard;
    }

    public void setCcard(int ccard) {
        this.ccard = ccard;
    }

    private Date cbirth;

    public Date getCbirth() {
        return cbirth;
    }

    public void setCbirth(Date cbirth) {
        this.cbirth = cbirth;
    }

    private Integer ctel;

    public Integer getCtel() {
        return ctel;
    }

    public void setCtel(Integer ctel) {
        this.ctel = ctel;
    }

    private String caddress;

    public String getCaddress() {
        return caddress;
    }

    public void setCaddress(String caddress) {
        this.caddress = caddress;
    }

    private short csex;

    public short getCsex() {
        return csex;
    }

    public void setCsex(short csex) {
        this.csex = csex;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Customer customer = (Customer) o;

        if (cid != customer.cid) return false;
        if (ccard != customer.ccard) return false;
        if (csex != customer.csex) return false;
        if (cname != null ? !cname.equals(customer.cname) : customer.cname != null) return false;
        if (cbirth != null ? !cbirth.equals(customer.cbirth) : customer.cbirth != null) return false;
        if (ctel != null ? !ctel.equals(customer.ctel) : customer.ctel != null) return false;
        if (caddress != null ? !caddress.equals(customer.caddress) : customer.caddress != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cid;
        result = 31 * result + (cname != null ? cname.hashCode() : 0);
        result = 31 * result + ccard;
        result = 31 * result + (cbirth != null ? cbirth.hashCode() : 0);
        result = 31 * result + (ctel != null ? ctel.hashCode() : 0);
        result = 31 * result + (caddress != null ? caddress.hashCode() : 0);
        result = 31 * result + (int) csex;
        return result;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", ccard=" + ccard +
                ", cbirth=" + cbirth +
                ", ctel=" + ctel +
                ", caddress='" + caddress + '\'' +
                ", csex=" + csex +
                '}';
    }
}
