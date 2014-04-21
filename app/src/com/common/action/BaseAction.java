package com.common.action;

import com.common.message.bean.ResultMessage;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	protected ResultMessage msg;
	
	public String execute() throws Exception {
		return Action.SUCCESS;
	}

}
