package dao;


import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 * Created by zhangbaoning on 2017/3/30.
 */
public class Factory {
    public static SessionFactory getSession() {
        Configuration configuration = new Configuration().configure();
        SessionFactory session = configuration.buildSessionFactory();
        return session;
    }
}
