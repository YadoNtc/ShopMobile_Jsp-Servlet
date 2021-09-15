package contronller.web;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModel;
import model.UserModel;
import service.ICategoryService;
import service.IProducerService;
import service.IProductService;
import service.IUserService;
import util.FormUtil;
import util.SessionUtil;

@WebServlet (urlPatterns = {"/trang-chu", "/dang-nhap", "/thoat"})
public class HomeContronller extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	@Inject
	private IUserService userService;
	
	@Inject IProductService productService;
	
	@Inject ICategoryService categoryService;
	
	@Inject IProducerService producerService;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message"); // file message.properties
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (action != null && action.equalsIgnoreCase("login")) {
			String message = req.getParameter("message");
			String alert = req.getParameter("alert");
			if (message != null && alert != null) {
				req.setAttribute("message", resourceBundle.getString(message));
				req.setAttribute("alert", alert);
			}
			req.getRequestDispatcher("/view/login.jsp").forward(req, resp);
		} else if (action != null && action.equalsIgnoreCase("logout")) {
			SessionUtil.getInstance().removeValue(req, "USERMODEL");
			resp.sendRedirect(req.getContextPath() + "/trang-chu");
		} else {
			ProductModel product = FormUtil.toModel(ProductModel.class, req);
			product.setListResult(productService.findAlll());					
			try {
				req.setAttribute("categories", categoryService.findAll());	
				req.setAttribute("producer", producerService.findAll());
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			req.setAttribute("product", product);
			req.getRequestDispatcher("/view/web/homebody.jsp").forward(req, resp);			
		}		
	}
	
	// Đăng nhập
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action =req.getParameter("action");
		if (action != null && action.equalsIgnoreCase("login")) {
			UserModel userModel = FormUtil.toModel(UserModel.class, req);
			userModel = userService.findByUserNameAndPassword(userModel.getUserName(), userModel.getPassword(), 1);
			if (userModel != null) {
				SessionUtil.getInstance().putValue(req, "USERMODEL", userModel);
				if (userModel.getRole().getCode().equalsIgnoreCase("USER")) {
					resp.sendRedirect(req.getContextPath() + "/trang-chu");			
				} else if (userModel.getRole().getCode().equalsIgnoreCase("ADMIN")) {
					resp.sendRedirect(req.getContextPath() + "/admin-home");
				}
			} else {
				resp.sendRedirect(req.getContextPath() + "/dang-nhap?action=login&message=invalid&alert=warning");
			}
		}	
	}

}
