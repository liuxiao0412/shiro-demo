package com.sojson.stock.model;

import java.io.Serializable;
import java.util.Date;

import net.sf.json.JSONObject;
/**
 * 
 * 
 * 入库记录
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
public class Stock implements Serializable{
	private static final long serialVersionUID = 1L;
	//0:删除
	public static final Long _0 = new Long(0);
	//1:有效
	public static final Long _1 = new Long(1);
	private Long id;
	/**品名*/
    private String prodName;
    /**产地*/
    private String prodArea;
    /**材质*/
    private String material;
    /**规格*/
    private String specifications;
    /**单位*/
    private String unit;
    /**重量*/
    private String weight;
    /**仓库*/
    private String warehouse;
    /**入库数量*/
    private Long num;
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

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getProdArea() {
		return prodArea;
	}

	public void setProdArea(String prodArea) {
		this.prodArea = prodArea;
	}

	public String getMaterial() {
		return material;
	}

	public void setMaterial(String material) {
		this.material = material;
	}

	public String getSpecifications() {
		return specifications;
	}

	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}
	

	public String getWarehouse() {
		return warehouse;
	}

	public void setWarehouse(String warehouse) {
		this.warehouse = warehouse;
	}

	public Long getNum() {
		return num;
	}

	public void setNum(Long num) {
		this.num = num;
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