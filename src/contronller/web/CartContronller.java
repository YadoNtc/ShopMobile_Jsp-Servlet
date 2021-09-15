package contronller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import model.OrderModel;
import service.IOrderService;
import util.HttpUtil;

@WebServlet (urlPatterns = "/gio-hang")
public class CartContronller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	@Inject 
	private IOrderService orderService;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/view/web/viewCart.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		OrderModel order = HttpUtil.jsonParse(req.getReader()).toModel(OrderModel.class);
		order = orderService.insertOrder(order);	
		mapper.writeValue(resp.getOutputStream(), order);	
		HttpSession session = req.getSession();
		order = (OrderModel) session.getAttribute("order");
		if (order != null) {
			session.removeAttribute("order");
		}
		//session.setAttribute("order", order);
	}
}
