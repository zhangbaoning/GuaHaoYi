package entity;

import java.sql.Date;

/**
 * Created by zhangbaoning on 2017/3/31.
 */
public class Customer {
    private int cid;
    private String cname;
    private String ccard;
    private Date cbirth;
    private Integer ctel;
    private String caddress;
    private short csex;
    private String cpassword;
    private Byte register;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCcard() {
        return ccard;
    }

    public void setCcard(String ccard) {
        this.ccard = ccard;
    }

    public Date getCbirth() {
        return cbirth;
    }

    public void setCbirth(Date cbirth) {
        this.cbirth = cbirth;
    }

    public Integer getCtel() {
        return ctel;
    }

    public void setCtel(Integer ctel) {
        this.ctel = ctel;
    }

    public String getCaddress() {
        return caddress;
    }

    public void setCaddress(String caddress) {
        this.caddress = caddress;
    }

    public short getCsex() {
        return csex;
    }

    public void setCsex(short csex) {
        this.csex = csex;
    }

    public String getCpassword() {
        return cpassword;
    }

    public void setCpassword(String cpassword) {
        this.cpassword = cpassword;
    }

    public Byte getRegister() {
        return register;
    }

    public void setRegister(Byte register) {
        this.register = register;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Customer customer = (Customer) o;

        if (cid != customer.cid) return false;
        if (csex != customer.csex) return false;
        if (cname != null ? !cname.equals(customer.cname) : customer.cname != null) return false;
        if (ccard != null ? !ccard.equals(customer.ccard) : customer.ccard != null) return false;
        if (cbirth != null ? !cbirth.equals(customer.cbirth) : customer.cbirth != null) return false;
        if (ctel != null ? !ctel.equals(customer.ctel) : customer.ctel != null) return false;
        if (caddress != null ? !caddress.equals(customer.caddress) : customer.caddress != null) return false;
        if (cpassword != null ? !cpassword.equals(customer.cpassword) : customer.cpassword != null) return false;
        if (register != null ? !register.equals(customer.register) : customer.register != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cid;
        result = 31 * result + (cname != null ? cname.hashCode() : 0);
        result = 31 * result + (ccard != null ? ccard.hashCode() : 0);
        result = 31 * result + (cbirth != null ? cbirth.hashCode() : 0);
        result = 31 * result + (ctel != null ? ctel.hashCode() : 0);
        result = 31 * result + (caddress != null ? caddress.hashCode() : 0);
        result = 31 * result + (int) csex;
        result = 31 * result + (cpassword != null ? cpassword.hashCode() : 0);
        result = 31 * result + (register != null ? register.hashCode() : 0);
        return result;
    }
}
