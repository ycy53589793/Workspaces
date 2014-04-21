package com.oms.sku.bean;

import java.util.Date;

public class SkuBean {
	
	private Long id;						//主键
	private String creator;					//创建人
	private Date createTime;				//创建时间
	private String modifier;				//修改人
	private Date modifyTime;				//修改时间
	private Integer recVer;					//版本号
	private char recStatus;					//逻辑删除状态
	private String orgId;					//公司号
	private String skuName;					//商品名称
	private String packageType;				//包装规格
	private String packageUnit;				//包装单位
	private Double packageQty;				//包装数
	private Long eachQty;					//EA数
	private Double grossWeight;				//毛重
	private Double netWeight;				//净重
	private Double volume;					//体积
	private Double price;					//单价
	private Double amount;					//金额
	private String temperature;				//温层
	private String remark;					//备注
	private String skuType;					//商品类别
	private Date productionDate;			//生产日期
	private Integer validDate;				//有效期
	private String validDateUnit;			//有效期单位
	private String maker;					//制造商
	private String barCode;					//商品条码
	
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
	public String getSkuName() {
		return skuName;
	}
	public void setSkuName(String skuName) {
		this.skuName = skuName;
	}
	public String getPackageType() {
		return packageType;
	}
	public void setPackageType(String packageType) {
		this.packageType = packageType;
	}
	public String getPackageUnit() {
		return packageUnit;
	}
	public void setPackageUnit(String packageUnit) {
		this.packageUnit = packageUnit;
	}
	public Double getPackageQty() {
		return packageQty;
	}
	public void setPackageQty(Double packageQty) {
		this.packageQty = packageQty;
	}
	public Long getEachQty() {
		return eachQty;
	}
	public void setEachQty(Long eachQty) {
		this.eachQty = eachQty;
	}
	public Double getGrossWeight() {
		return grossWeight;
	}
	public void setGrossWeight(Double grossWeight) {
		this.grossWeight = grossWeight;
	}
	public Double getNetWeight() {
		return netWeight;
	}
	public void setNetWeight(Double netWeight) {
		this.netWeight = netWeight;
	}
	public Double getVolume() {
		return volume;
	}
	public void setVolume(Double volume) {
		this.volume = volume;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	public String getTemperature() {
		return temperature;
	}
	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getSkuType() {
		return skuType;
	}
	public void setSkuType(String skuType) {
		this.skuType = skuType;
	}
	public Date getProductionDate() {
		return productionDate;
	}
	public void setProductionDate(Date productionDate) {
		this.productionDate = productionDate;
	}
	public Integer getValidDate() {
		return validDate;
	}
	public void setValidDate(Integer validDate) {
		this.validDate = validDate;
	}
	public String getValidDateUnit() {
		return validDateUnit;
	}
	public void setValidDateUnit(String validDateUnit) {
		this.validDateUnit = validDateUnit;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getBarCode() {
		return barCode;
	}
	public void setBarCode(String barCode) {
		this.barCode = barCode;
	}

}
