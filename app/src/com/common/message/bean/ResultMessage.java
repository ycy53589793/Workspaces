package com.common.message.bean;

/**
 * Description:   返回信息类
 * @author: 杨聪艺
 * Create Date: 2014-3-26
 * <pre>
 * 修改记录:
 * 修改后版本			修改人		修改日期			修改内容 
 * 2014-3-26.1		杨聪艺		2014-3-26		create					
 * </pre>
 */
public class ResultMessage {
	
	private boolean success;
	private String resultCode;
	private String resultDetail;
	
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultDetail() {
		return resultDetail;
	}
	public void setResultDetail(String resultDetail) {
		this.resultDetail = resultDetail;
	}

}
