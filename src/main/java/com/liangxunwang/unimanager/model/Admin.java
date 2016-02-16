package com.liangxunwang.unimanager.model;

/**
 * Created by liuzwei on 2015/1/29.
 */
public class Admin {
    private String mm_manager_id;
    private String mm_manager_mobile;
    private String mm_manager_nickname;
    private String mm_manager_password;
    private String mm_manager_is_use;
    private String permissions;

    public String getPermissions() {
        return permissions;
    }

    public void setPermissions(String permissions) {
        this.permissions = permissions;
    }

    public String getMm_manager_id() {
        return mm_manager_id;
    }

    public void setMm_manager_id(String mm_manager_id) {
        this.mm_manager_id = mm_manager_id;
    }

    public String getMm_manager_mobile() {
        return mm_manager_mobile;
    }

    public void setMm_manager_mobile(String mm_manager_mobile) {
        this.mm_manager_mobile = mm_manager_mobile;
    }

    public String getMm_manager_nickname() {
        return mm_manager_nickname;
    }

    public void setMm_manager_nickname(String mm_manager_nickname) {
        this.mm_manager_nickname = mm_manager_nickname;
    }

    public String getMm_manager_password() {
        return mm_manager_password;
    }

    public void setMm_manager_password(String mm_manager_password) {
        this.mm_manager_password = mm_manager_password;
    }

    public String getMm_manager_is_use() {
        return mm_manager_is_use;
    }

    public void setMm_manager_is_use(String mm_manager_is_use) {
        this.mm_manager_is_use = mm_manager_is_use;
    }
}
