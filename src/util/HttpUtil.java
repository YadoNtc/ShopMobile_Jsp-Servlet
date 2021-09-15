package util;

import java.io.BufferedReader;
import java.io.IOException;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class HttpUtil {
	
	private String value;

	public HttpUtil(String value) {
		this.value = value;
	}
	
	/**
	 * Chuyen JSON ---> String
	 * @param reader
	 * @return
	 */
	public static HttpUtil jsonParse(BufferedReader reader) {
		StringBuilder sb = new StringBuilder();
		String line;
		try {
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new HttpUtil(sb.toString());
		
	}
		
	/**
	 * Chuyen JSON ---> classModel
	 * @param <T>
	 * @param tClass
	 * @return Class
	 */
	public <T> T toModel(Class <T> tClass) {
		try {
			return new ObjectMapper().readValue(value, tClass);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	
}
