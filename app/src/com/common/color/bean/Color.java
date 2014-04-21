package com.common.color.bean;

import java.util.Date;

public class Color {
	
	private Long id;						//主键
	private String creator;					//创建人
	private Date createTime;				//创建时间
	private String modifier;				//修改人
	private Date modifyTime;				//修改时间
	private Integer recVer;					//版本号
	private char recStatus;					//逻辑删除状态
	private String orgId;					//公司号
	private String colorName;				//颜色名
	private Integer colorValue;				//颜色值,十六进制
	
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
	public String getColorName() {
		return colorName;
	}
	public void setColorName(String colorName) {
		this.colorName = colorName;
	}
	public Integer getColorValue() {
		return colorValue;
	}
	public void setColorValue(Integer colorValue) {
		this.colorValue = colorValue;
	}

}
