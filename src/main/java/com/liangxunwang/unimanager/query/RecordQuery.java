package com.liangxunwang.unimanager.query;

/**
 */
public class RecordQuery  extends BaseAreaQuery{
    private int index;
    private int size;
    private String mm_msg_type;
    private String provinceid;
    private String cityid;
    private String countryid;
    private String accessToken;
    private String mm_emp_id;
    private String keyword;
    private String mm_level_num;//等级 分等级查看省市区信息
    private String is_see_all;//查看全部信息权限
    private String is_select_countryId;//是否选择的县区

    public String getIs_select_countryId() {
        return is_select_countryId;
    }

    public void setIs_select_countryId(String is_select_countryId) {
        this.is_select_countryId = is_select_countryId;
    }

    public String getIs_see_all() {
        return is_see_all;
    }

    public void setIs_see_all(String is_see_all) {
        this.is_see_all = is_see_all;
    }

    public String getMm_level_num() {
        return mm_level_num;
    }

    public void setMm_level_num(String mm_level_num) {
        this.mm_level_num = mm_level_num;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getMm_emp_id() {
        return mm_emp_id;
    }

    public void setMm_emp_id(String mm_emp_id) {
        this.mm_emp_id = mm_emp_id;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public String getMm_msg_type() {
        return mm_msg_type;
    }

    public void setMm_msg_type(String mm_msg_type) {
        this.mm_msg_type = mm_msg_type;
    }

    public String getProvinceid() {
        return provinceid;
    }

    public void setProvinceid(String provinceid) {
        this.provinceid = provinceid;
    }

    public String getCityid() {
        return cityid;
    }

    public void setCityid(String cityid) {
        this.cityid = cityid;
    }

    public String getCountryid() {
        return countryid;
    }

    public void setCountryid(String countryid) {
        this.countryid = countryid;
    }
}
