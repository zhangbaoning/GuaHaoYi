package action;

/**
 * Created by zhangbaoning on 2017/3/31.
 */
public interface CustomerAction {
    public String register();//注册

    public String login();//登录

    public String loginOut();//退出

    public String order(int did, int cid);//预约

    public String infoUpdate();//信息修改

    public String orderByHnameAndPname();

    public String order();
}
