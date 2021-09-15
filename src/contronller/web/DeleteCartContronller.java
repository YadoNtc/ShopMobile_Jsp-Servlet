package contronller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.IOrderService;

@WebServlet(urlPatterns = "/xoa-gio-hang")
public class DeleteCartContronller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	private IOrderService orderService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long id = Long.parseLong(req.getParameter("id"));
		orderService.delCart(req, id);
		resp.sendRedirect(req.getContextPath() + "/gio-hang");
	}
}
