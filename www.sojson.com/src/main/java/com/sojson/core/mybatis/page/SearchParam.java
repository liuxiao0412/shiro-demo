package com.sojson.core.mybatis.page;

public class SearchParam<T> {

	public int pageNo;
	
	public int pageSize;
	
	public T paramList;

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public T getParamList() {
		return paramList;
	}

	public void setParamList(T paramList) {
		this.paramList = paramList;
	}

	
	
	
	
}
