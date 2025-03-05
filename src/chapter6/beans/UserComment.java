package chapter6.beans;

import java.io.Serializable;
import java.util.Date;

public class UserComment implements Serializable {

    private int id;
    private String account;
    private String name;
    private int userId;
    private String text;
    private Date createdDate;

}
