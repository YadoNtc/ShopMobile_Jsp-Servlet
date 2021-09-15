package util;

import javax.servlet.http.HttpServletRequest;

public class MessageUtil {

	public static void showMessage(HttpServletRequest req) {
		if (req.getParameter("message") != null) {
			String messageResp = "";
			String alert = "";
			String message = req.getParameter("message");
			if (message.equals("insert_success")) {
				messageResp = "Insert success!";
				alert = "success";
			} else if (message.equals("update_success")) {
				messageResp = "Update success!";
				alert = "success";
			} else if (message.equals("delete_success")) {
				messageResp = "Delete success!";
				alert = "success";
			} else if (message.equals("system_error")) {
				messageResp = "System Error!";
				alert = "warning";
			} 
			req.setAttribute("messageResp", messageResp);
			req.setAttribute("alert", alert);
		}
	}
}
