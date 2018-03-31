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
    private String ctel;
    private String caddress = "陕西省";
    private String csex;
    private String cpassword;
    private Byte register = 0;
    private int cage;
    private Doctor doctor;

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "cid=" + cid +
                ", cname='" + cname + '\'' +
                ", ccard='" + ccard + '\'' +
                ", cbirth=" + cbirth +
                ", ctel=" + ctel +
                ", caddress='" + caddress + '\'' +
                ", csex=" + csex +
                ", cpassword='" + cpassword + '\'' +
                ", register=" + register +
                ", cage=" + cage +
                '}';
    }

    public int getCage() {
        //TODO 删掉打印

        String ageStirng = ccard.substring(6, 10);
        System.out.println(ageStirng);
        System.out.println(new java.util.Date().getYear());
        //日期表示的年份减去 1900。
        cage = new java.util.Date().getYear() + 1900 - Integer.parseInt(ageStirng);
        return cage;
    }

    public void setCage(int cage) {
        this.cage = cage;
    }

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

    public String getCtel() {
        return ctel;
    }

    public void setCtel(String ctel) {
        this.ctel = ctel;
    }

    public String getCaddress() {
        return caddress;
    }

    public void setCaddress(String caddress) {
        this.caddress = caddress;
    }

    public String getCsex() {
        return csex;
    }

    public void setCsex(String csex) {
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
        result = 31 * result + (csex != null ? caddress.hashCode() : 0);
        result = 31 * result + (cpassword != null ? cpassword.hashCode() : 0);
        result = 31 * result + (register != null ? register.hashCode() : 0);
        return result;
    }

}
