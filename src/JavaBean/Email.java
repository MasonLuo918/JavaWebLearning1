package JavaBean;

import java.io.Serializable;

public class Email implements Serializable {
    //serialVersionUID值
    private static final long serialVersionUID = 1L;

    //邮箱地址
    private String mailAdd;

    //是否为一个标准的邮箱地址
    private boolean email;

    /**
     * 构造方法
     * @param mailAdd Email地址
     */
    public Email(String mailAdd){
        this.mailAdd = mailAdd;
    }

    /**
     * 无参构造方法
     */
    public Email(){

    }

    /**
     * 是否为一个标准的邮箱地址
     * @return boolean
     */
    public boolean isEmail(){
        // 正则表达式，定义邮箱格式
        String regex = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
        // matches()方法可判断字符串是否与正则表达式匹配
        if(mailAdd.matches(regex)){
            email = true;
        }else{
            email = false;
        }
        return email;
    }

    public String getMailAdd() {
        return mailAdd;
    }

    public void setMailAdd(String mailAdd) {
        this.mailAdd = mailAdd;
    }
}
