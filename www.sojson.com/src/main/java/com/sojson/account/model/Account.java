package com.sojson.account.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import net.sf.json.JSONObject;
/**
 * 
 * 
 * 账目
 * 
 * <p>
 * 
 * 区分　责任人　日期　　　　说明<br/>
 * 创建　刘潇　2017年12月5日 　<br/>
 * <p>
 * *******
 * <p>
 * @author liux
 * @email  75051874@qq.com
 * @version 1.0,2017年12月5日 <br/>
 * 
 */
public class Account implements Serializable{
	private static final long serialVersionUID = 1L;
	//0:删除
	public static final Long _0 = new Long(0);
	//1:有效
	public static final Long _1 = new Long(1);
	private Long id;
	/**品类型1收入2支出*/
    private Long type;
    /**金额*/
    private BigDecimal price;
    /**备注*/
    private String desc;
    /**创建时间*/
    private Date createTime;
    /**创建人*/
    private Long createTor;
    /**最后登录时间*/
    private Date updateTime;
    /**修改人*/
    private Long updaTor;
    /**1:有效，0:删除*/
    private Long status;
    
    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getType() {
		return type;
	}

	public void setType(Long type) {
		this.type = type;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Long getCreateTor() {
		return createTor;
	}

	public void setCreateTor(Long createTor) {
		this.createTor = createTor;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Long getUpdaTor() {
		return updaTor;
	}

	public void setUpdaTor(Long updaTor) {
		this.updaTor = updaTor;
	}

	public Long getStatus() {
		return status;
	}

	public void setStatus(Long status) {
		this.status = status;
	}

	public String toString(){
    	return JSONObject.fromObject(this).toString();
    }
}