package com.cykj.bean;

public class AdminUser {

    private int adminId;
    private String account;
    private String pwd;
    private String adminName;
    private String vCode;

    public AdminUser() {

    }

    public AdminUser(int adminId, String account, String pwd, String adminName) {
        this.adminId = adminId;
        this.account = account;
        this.pwd = pwd;
        this.adminName = adminName;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getvCode() {
        return vCode;
    }

    public void setvCode(String vCode) {
        this.vCode = vCode;
    }
}
