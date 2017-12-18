package com.sojson.order.model;

import java.io.Serializable;
import java.util.Date;

import net.sf.json.JSONObject;
/**
 * 
 * 
 * 订单
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
public class Order implements Serializable{
	private static final long serialVersionUID = 1L;
	//0:删除
	public static final Long _0 = new Long(0);
	//1:有效
	public static final Long _1 = new Long(1);
	private Long id;
	/**编号*/
    private String orderno;
    /**提货单位*/
    private String delivery;
    /**车号*/
    private String carnum;
    /**电话*/
    private String tel;
    /**销售人员*/
    private String salesman;
    /**是否含税1是0否*/
    private Long istax;
    /**单据类型1意向单2正式单*/
    private Long type;
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

	public String getOrderno() {
		return orderno;
	}

	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public String getCarnum() {
		return carnum;
	}

	public void setCarnum(String carnum) {
		this.carnum = carnum;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getSalesman() {
		return salesman;
	}

	public void setSalesman(String salesman) {
		this.salesman = salesman;
	}

	public Long getIstax() {
		return istax;
	}

	public void setIstax(Long istax) {
		this.istax = istax;
	}

	public Long getType() {
		return type;
	}

	public void setType(Long type) {
		this.type = type;
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