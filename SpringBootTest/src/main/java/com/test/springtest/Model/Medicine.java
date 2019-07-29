package com.test.springtest.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author M.Kausik
 */
@Entity
public class Medicine {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int mid;
    private String mname;
    private String mcomp;

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname;
    }

    public String getMcomp() {
        return mcomp;
    }

    public void setMcomp(String mcomp) {
        this.mcomp = mcomp;
    }
}
