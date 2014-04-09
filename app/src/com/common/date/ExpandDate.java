package com.common.date;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.common.util.EmptyUtil;

/**
 * Description:   扩展日期类
 * @author: 杨聪艺
 * Create Date: 2014-4-9
 * <pre>
 * 修改记录:
 * 修改后版本			修改人		修改日期			修改内容 
 * 2014-4-9.1		杨聪艺		2014-4-9		create					
 * </pre>
 */
public class ExpandDate extends Date {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final String YYYYMMDDHHMM="yyyyMMddHHmm";
	private final String FULL="yyyy-MM-dd HH:mm:ss";
	private final String YY_MM_DD="yyyy-MM-dd";
	
	public ExpandDate() {
		
	}
	
	public ExpandDate(Long date) {
		super(date);
	}
	
	/**
	 * Description :是否start<this<end
	 * @param start
	 * @param end
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-9
	 */
	public boolean isBetweenOfClosure(Date start,Date end) {
		
		boolean flag=false;
		if(after(start) && before(end)) {
			flag=true;
		}
		return flag;
	}
	
	/**
	 * Description :是否start<=this<=end
	 * @param start
	 * @param end
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-9
	 */
	public boolean isBetweenWithoutClosure(Date start,Date end) {
		
		boolean flag=false;
		if(compareTo(start)>=0 && compareTo(end)<=0) {
			flag=true;
		}
		return flag;
		
	}
	
	/**
	 * Description :是否start<=this<end
	 * @param start
	 * @param end
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-9
	 */
	public boolean isGteStartAndLtEnd(Date start,Date end) {
		
		boolean flag=false;
		if(compareTo(start)>=0 && before(end)) {
			flag=true;
		}
		return flag;
		
	}
	
	/**
	 * Description :是否start<this<=end
	 * @param start
	 * @param end
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-9
	 */
	public boolean isGtStartAndLteEnd(Date start,Date end) {
		
		boolean flag=false;
		if(after(start) && compareTo(end)<=0) {
			flag=true;
		}
		return flag;
		
	}
	
	/**
	 * Description :日期格式化
	 * @param fmt
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-9
	 */
	public String format(String fmt) {
		
		if(!YYYYMMDDHHMM.equals(fmt) && !YY_MM_DD.equals(fmt) && !FULL.equals(fmt)) {
			return null;
		}
		SimpleDateFormat df = new SimpleDateFormat(fmt);
		return df.format(this);
		
	}
	
	/**
	 * Description :将字符串转换成日期
	 * @param fmt
	 * @return
	 * @Author: 杨聪艺
	 * @Create Date: 2014-4-9
	 */
	public Date parseDate(String fmt) {
		
		if(EmptyUtil.isNotEmpty(fmt)) {
			SimpleDateFormat df = new SimpleDateFormat(fmt);
			try {
				return df.parse(fmt);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return null;
		
	}

}
