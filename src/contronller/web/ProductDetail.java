package contronller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModel;
import service.ICategoryService;
import service.IProducerService;
import service.IProductService;
import util.FormUtil;

@WebServlet(urlPatterns = "/home-product-detail")
public class ProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Inject
	private IProductService productService;
	
	@Inject ICategoryService categoryService;
	
	@Inject
	private IProducerService producerService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductModel product = FormUtil.toModel(ProductModel.class, req);
		product.setListResult(productService.findAlll());					
		try {
		    if (product.getId() != null) { 
		    	product = productService.findOne(product.getId());	
		    }	 
				req.setAttribute("categories", categoryService.findAll());	
				req.setAttribute("producer", producerService.findAll());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		req.setAttribute("product", product);
		req.getRequestDispatcher("/view/web/productdetail.jsp").forward(req, resp);
	}
	
}
