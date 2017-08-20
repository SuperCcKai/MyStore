package com.java.bu.util;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;


/**
 * 通过JSON向页面输出工具类
 * @author 卜凡想
 * 2015年1月20日19:32:36
 */
public class ResponseUtil {

	/**
	 * 向jsp页面输出
	 * @param response
	 * @param o
	 * @throws Exception
	 */
	public static void write(HttpServletResponse response,Object o) throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println(o.toString());
		out.flush();
		out.close();
	}
}
