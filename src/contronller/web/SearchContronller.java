package contronller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModel;
import service.IProductService;
import util.FormUtil;

@WebServlet(urlPatterns = "/search")
public class SearchContronller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Inject
	private IProductService productService;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductModel product = FormUtil.toModel(ProductModel.class, req);

		String action = req.getParameter("action");
		if (action != null && action.equalsIgnoreCase("search")) {
			String name = req.getParameter("name");
			product.setListResult(productService.searchByName(name));
			req.setAttribute("product", product);
			req.getRequestDispatcher("/view/web/searchProduct.jsp").forward(req, resp);
		}

	}
}
