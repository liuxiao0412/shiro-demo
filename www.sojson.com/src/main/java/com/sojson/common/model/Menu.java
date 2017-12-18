package com.sojson.common.model;

import java.util.List;

/**
* Auto-generated: 2017-12-06 10:48:24
*
* @author liuxiao 
*/
public class Menu {

   private String name;
   private List<ChildMenu> list;
   public void setName(String name) {
        this.name = name;
    }
    public String getName() {
        return name;
    }
	public List<ChildMenu> getList() {
		return list;
	}
	public void setList(List<ChildMenu> list) {
		this.list = list;
	}
    
   

}