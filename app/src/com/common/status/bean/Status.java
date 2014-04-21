package com.common.status.bean;

import java.util.Date;

public class Status {
	
	private Long id;						//主键
	private String creator;					//创建人
	private Date createTime;				//创建时间
	private String modifier;				//修改人
	private Date modifyTime;				//修改时间
	private Integer recVer;					//版本号
	private char recStatus;					//逻辑删除状态
	private String orgId;					//公司号
	private String name;					//状态名
	private Long colorId;					//颜色
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCreator() {
		return creator;
	}
	public void setCreator(String creator) {
		this.creator = creator;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getModifier() {
		return modifier;
	}
	public void setModifier(String modifier) {
		this.modifier = modifier;
	}
	public Date getModifyTime() {
		return modifyTime;
	}
	public void setModifyTime(Date modifyTime) {
		this.modifyTime = modifyTime;
	}
	public Integer getRecVer() {
		return recVer;
	}
	public void setRecVer(Integer recVer) {
		this.recVer = recVer;
	}
	public char getRecStatus() {
		return recStatus;
	}
	public void setRecStatus(char recStatus) {
		this.recStatus = recStatus;
	}
	public String getOrgId() {
		return orgId;
	}
	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getColorId() {
		return colorId;
	}
	public void setColorId(Long colorId) {
		this.colorId = colorId;
	}

}
