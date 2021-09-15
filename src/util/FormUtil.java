package util;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

/**
 * Chuyen nhieu tham so
 * @author Admin
 *
 */
public class FormUtil {

	public static <T> T toModel(Class<T> tClass, HttpServletRequest req) {
		T object = null;
		try {
			object = tClass.newInstance();
			BeanUtils.populate(object, req.getParameterMap());
		} catch (InstantiationException | IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		} 
		return object;	
	}
}
