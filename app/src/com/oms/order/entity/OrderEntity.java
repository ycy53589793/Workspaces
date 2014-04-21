package com.oms.order.entity;

import java.util.Date;

/**
 * Description:   订单视图类
 * @author: 杨聪艺
 * Create Date: 2014-4-21
 * <pre>
 * 修改记录:
 * 修改后版本			修改人		修改日期			修改内容 
 * 2014-4-21.1		杨聪艺		2014-4-21		create					
 * </pre>
 */
public class OrderEntity {
	
	private Long id;						//主键
	private String creator;					//创建人
	private Date createTime;				//创建时间
	private String modifier;				//修改人
	private Date modifyTime;				//修改时间
	private Integer recVer;					//版本号
	private char recStatus;					//逻辑删除状态
	private String orgId;					//公司号
	private String systemNo;				//系统号
	private String orderNo;					//订单号
	private String orderType;				//订单类型
	private String priority;				//优先级
	private String transType;				//运输方式
	private String customer;				//客户
	private String orderTime;				//下单时间
	private Date requireSendTimeFm;			//要求发货时间从
	private Date requireSendTimeTo;			//要求发货时间到
	private Date requireReceiveTimeFm;		//要求送达时间从
	private Date requireReceiveTimeTo;		//要求送达时间到
	private String shipper;					//发货人
	private String locationFm;				//发货地点
	private String consignee;				//收货人
	private String locationTo;				//收货地点
	private String orderSource;				//订单来源
	private String poNo;					//采购单号
	private String soNo;					//销售单号
	private String doNo;					//提货单号
	private String remark;					//备注
	private String parentOrder;				//父订单
	private char megerFlag;					//合并标志
	private char splitFlag;					//拆分标志
	private Date expirationTime;			//失效日期
	private char appointmentFlag;			//是否预约
	private Date preOrderTime;				//预约时间
	private String preOrderNo;				//预约单号
	private char emergentFlag;				//是否紧急
	private String paymentType;				//付款方式
	private String warehouser;				//仓库
	private String station;					//基地
	private char editable;					//是否可编辑
	private String temperatureLevel;		//温层
	private char bmsVisitable;				//bms系统是否可见
	private char tmsVisitable;				//tms系统是否可见
	private char wmsVisitable;				//wms系统是否可见
	private String statusName;				//状态名称
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
	public String getSystemNo() {
		return systemNo;
	}
	public void setSystemNo(String systemNo) {
		this.systemNo = systemNo;
	}
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getOrderType() {
		return orderType;
	}
	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
	}
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public Date getRequireSendTimeFm() {
		return requireSendTimeFm;
	}
	public void setRequireSendTimeFm(Date requireSendTimeFm) {
		this.requireSendTimeFm = requireSendTimeFm;
	}
	public Date getRequireSendTimeTo() {
		return requireSendTimeTo;
	}
	public void setRequireSendTimeTo(Date requireSendTimeTo) {
		this.requireSendTimeTo = requireSendTimeTo;
	}
	public Date getRequireReceiveTimeFm() {
		return requireReceiveTimeFm;
	}
	public void setRequireReceiveTimeFm(Date requireReceiveTimeFm) {
		this.requireReceiveTimeFm = requireReceiveTimeFm;
	}
	public Date getRequireReceiveTimeTo() {
		return requireReceiveTimeTo;
	}
	public void setRequireReceiveTimeTo(Date requireReceiveTimeTo) {
		this.requireReceiveTimeTo = requireReceiveTimeTo;
	}
	public String getShipper() {
		return shipper;
	}
	public void setShipper(String shipper) {
		this.shipper = shipper;
	}
	public String getLocationFm() {
		return locationFm;
	}
	public void setLocationFm(String locationFm) {
		this.locationFm = locationFm;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getLocationTo() {
		return locationTo;
	}
	public void setLocationTo(String locationTo) {
		this.locationTo = locationTo;
	}
	public String getOrderSource() {
		return orderSource;
	}
	public void setOrderSource(String orderSource) {
		this.orderSource = orderSource;
	}
	public String getPoNo() {
		return poNo;
	}
	public void setPoNo(String poNo) {
		this.poNo = poNo;
	}
	public String getSoNo() {
		return soNo;
	}
	public void setSoNo(String soNo) {
		this.soNo = soNo;
	}
	public String getDoNo() {
		return doNo;
	}
	public void setDoNo(String doNo) {
		this.doNo = doNo;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getParentOrder() {
		return parentOrder;
	}
	public void setParentOrder(String parentOrder) {
		this.parentOrder = parentOrder;
	}
	public char getMegerFlag() {
		return megerFlag;
	}
	public void setMegerFlag(char megerFlag) {
		this.megerFlag = megerFlag;
	}
	public char getSplitFlag() {
		return splitFlag;
	}
	public void setSplitFlag(char splitFlag) {
		this.splitFlag = splitFlag;
	}
	public Date getExpirationTime() {
		return expirationTime;
	}
	public void setExpirationTime(Date expirationTime) {
		this.expirationTime = expirationTime;
	}
	public char getAppointmentFlag() {
		return appointmentFlag;
	}
	public void setAppointmentFlag(char appointmentFlag) {
		this.appointmentFlag = appointmentFlag;
	}
	public Date getPreOrderTime() {
		return preOrderTime;
	}
	public void setPreOrderTime(Date preOrderTime) {
		this.preOrderTime = preOrderTime;
	}
	public String getPreOrderNo() {
		return preOrderNo;
	}
	public void setPreOrderNo(String preOrderNo) {
		this.preOrderNo = preOrderNo;
	}
	public char getEmergentFlag() {
		return emergentFlag;
	}
	public void setEmergentFlag(char emergentFlag) {
		this.emergentFlag = emergentFlag;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public String getWarehouser() {
		return warehouser;
	}
	public void setWarehouser(String warehouser) {
		this.warehouser = warehouser;
	}
	public String getStation() {
		return station;
	}
	public void setStation(String station) {
		this.station = station;
	}
	public char getEditable() {
		return editable;
	}
	public void setEditable(char editable) {
		this.editable = editable;
	}
	public String getTemperatureLevel() {
		return temperatureLevel;
	}
	public void setTemperatureLevel(String temperatureLevel) {
		this.temperatureLevel = temperatureLevel;
	}
	public char getBmsVisitable() {
		return bmsVisitable;
	}
	public void setBmsVisitable(char bmsVisitable) {
		this.bmsVisitable = bmsVisitable;
	}
	public char getTmsVisitable() {
		return tmsVisitable;
	}
	public void setTmsVisitable(char tmsVisitable) {
		this.tmsVisitable = tmsVisitable;
	}
	public char getWmsVisitable() {
		return wmsVisitable;
	}
	public void setWmsVisitable(char wmsVisitable) {
		this.wmsVisitable = wmsVisitable;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
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
