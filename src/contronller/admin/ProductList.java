package contronller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModel;
import paging.PageRequest;
import paging.Pageble;
import service.ICategoryService;
import service.IProducerService;
import service.IProductService;
import sorter.Sorter;
import util.FormUtil;
import util.MessageUtil;

@WebServlet (urlPatterns = {"/admin-product"})
public class ProductList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	private IProductService productService;
	
	@Inject
	private ICategoryService categoryService;
	
	@Inject
	private IProducerService producerService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductModel product = FormUtil.toModel(ProductModel.class, req);
		String view = "";
		if (product.getType().equalsIgnoreCase("list")) {
			Pageble pageble = new PageRequest(product.getPage(), product.getMaxPageItem(), new Sorter(product.getSortName(), product.getSortBy()));
			product.setListResult(productService.findAll(pageble));
			
			product.setTotalItem(productService.countTotalItem());
			
			product.setTotalPage((int) (Math.ceil((double) product.getTotalItem()) / product.getMaxPageItem()));
			
			view = "/view/admin/product/listProduct.jsp";
		} else if (product.getType().equalsIgnoreCase("edit")) {
			if (product.getId() != null) {
				product = productService.findOne(product.getId());
			}
			try {
				req.setAttribute("categories", categoryService.findAll());	
				req.setAttribute("producer", producerService.findAll());
			} catch (Exception e) {
				e.printStackTrace();
			}
			view = "/view/admin/product/edit.jsp";
		}
		MessageUtil.showMessage(req);
		req.setAttribute("product", product);
		req.getRequestDispatcher(view).forward(req, resp);
		
	}
}
