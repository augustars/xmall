package com.augustars.xmall.util;

import java.util.Properties;

public class ConstantsUtil {
	private static Properties props = new Properties();
	
	static {
		// 加载配置文件
		try {
			props.load(ConstantsUtil.class.getClassLoader().getResourceAsStream("xmall.properties"));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static final String STATUS_YES = props.getProperty("sys.status.yes");
	public static final String STATUS_NO = props.getProperty("sys.status.no");
	
	public static final String GENDER_MALE = props.getProperty("sys.gender.male");
	public static final String GENDER_FEMALE = props.getProperty("sys.gender.female");
}
