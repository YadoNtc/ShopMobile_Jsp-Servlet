package contronller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import model.ProductModel;
import model.UserModel;
import service.IProductService;
import util.HttpUtil;
import util.SessionUtil;

@WebServlet (urlPatterns = "/api-admin-product")
public class EditApi extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Inject
	private IProductService productService;	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		ProductModel productModel = HttpUtil.jsonParse(req.getReader()).toModel(ProductModel.class);
		
		productModel.setCreatedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUserName());
		productModel = productService.insertService(productModel);
		mapper.writeValue(resp.getOutputStream(), productModel);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		ProductModel updateProduct = HttpUtil.jsonParse(req.getReader()).toModel(ProductModel.class);
		
		updateProduct.setModifiedBy(((UserModel) SessionUtil.getInstance().getValue(req, "USERMODEL")).getUserName());
		updateProduct = productService.update(updateProduct);
		mapper.writeValue(resp.getOutputStream(), updateProduct);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		ProductModel product = HttpUtil.jsonParse(req.getReader()).toModel(ProductModel.class);
		productService.delete(product.getIds());
		mapper.writeValue(resp.getOutputStream(), "{}");
	}
	
}
