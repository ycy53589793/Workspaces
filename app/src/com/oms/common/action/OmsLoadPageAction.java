package com.oms.common.action;

import com.common.action.BaseAction;
import com.opensymphony.xwork2.Action;

public class OmsLoadPageAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * Description :加载订单查询页面
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-22
	 */
	public String loadOrderQueryPage() {
		return Action.SUCCESS;
	}
	
	/**
	 * Description :加载订单查询结果页面
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-22
	 */
	public String loadOrderResultPage() {
		return Action.SUCCESS;
	}
	
	/**
	 * Description :加载分解策略查询页面
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-23
	 */
	public String loadSeparateRuleQueryPage() {
		return Action.SUCCESS;
	}
	
	/**
	 * Description :加载分解策略查询结果页面
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-23
	 */
	public String loadSeparateRuleResultPage() {
		return Action.SUCCESS;
	}
	
	/**
	 * Description :加载作业类型查询页面
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-24
	 */
	public String loadWorkTypeQueryPage() {
		return Action.SUCCESS;
	}
	
	/**
	 * Description :加载作业类型查询结果页面
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-24
	 */
	public String loadWorkTypeResultPage() {
		return Action.SUCCESS;
	}

}
