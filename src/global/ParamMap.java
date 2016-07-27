package global;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @date   :2016. 7. 26.
 * @author :ckan
 * @file   :ParamMap.java 
 * @story  :
 */
public class ParamMap {
	public static String getValues(HttpServletRequest request,String name){
		String[] values = request.getParameterMap().get(name);
		String strVal = "";
		int i = 0;
		StringBuffer buff = new StringBuffer();
		for (; i < values.length; i++) {
			buff = buff.append(values[i]+",");
		}
		strVal = buff.toString().substring(0,buff.length() - 1);
		return strVal;
	}
}
