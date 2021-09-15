package contronller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CategoryModel;
import paging.PageRequest;
import paging.Pageble;
import service.ICategoryService;
import sorter.Sorter;
import util.FormUtil;

@WebServlet (urlPatterns = {"/admin-catagory"})
public class Catagory extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Inject
	private ICategoryService categoryService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryModel category = FormUtil.toModel(CategoryModel.class, req);
		Pageble pageble = new PageRequest(category.getPage(), category.getMaxPageItem(), new Sorter(category.getSortName(), category.getSortBy()));
		category.setListResult(categoryService.findAlls(pageble));
		category.setTotalItem(categoryService.countTotalItem());
		category.setTotalPage((int) Math.ceil((double) category.getTotalItem() / category.getMaxPageItem()));
		req.setAttribute("category", category);
		req.getRequestDispatcher("/view/admin/catagories/catagory.jsp").forward(req, resp);
	}
}
