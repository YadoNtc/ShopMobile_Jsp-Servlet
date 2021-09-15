package contronller.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.BillProductModel;
import model.OrderModel;
import model.ProductModel;
import service.IProductService;

@WebServlet(urlPatterns = "/them-vao-gio-hang")
public class AddToCartContronller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	private IProductService productService;
	
/*	@SuppressWarnings({ "unchecked" })
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long id = Long.parseLong(req.getParameter("id"));
		ProductModel product = productService.findOne(id);
		
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("listCart");
		if (obj == null) {
			// Tao mat hang
			BillProductModel billProduct = new BillProductModel();
			billProduct.setProduct(product);
			billProduct.setQuantity((long) 1);
			billProduct.setUnitPrice(product.getPrice());
			// Gio co nhieu hang
			Map<Long, BillProductModel> listCarts = new HashMap<>();
			listCarts.put(id, billProduct); // Them hang vao ds
			
			session.setAttribute("listCarts", listCarts); // luu vao session
		} else {
			Map<Long, BillProductModel> listcarts = (Map<Long, BillProductModel>) obj;
			BillProductModel billProduct = listcarts.get(id);
			
			if (billProduct == null) {
				billProduct = new BillProductModel();
				billProduct.setProduct(product);
				billProduct.setQuantity((long) 1);
				billProduct.setUnitPrice(product.getPrice());
				
				listcarts.put(id, billProduct);
			} else {
				billProduct.setQuantity(billProduct.getQuantity() + 1);
			}
			
			session.setAttribute("listCarts", listcarts);
		}
		//resp.sendRedirect(req.getContextPath() + "/gio-hang");
		resp.sendRedirect(req.getContextPath() + "/trang-chu");
	}
*/
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long quantity = (long) 1;
		Long productId;
		Long orderId = Long.parseLong(req.getParameter("id"));
		double totalPrices = 0;
		if (req.getParameter("id") != null) {
			productId = Long.parseLong(req.getParameter("id"));
			ProductModel productModel = productService.findOne(productId);
			if (productModel != null) {
				if (req.getParameter("quantity") != null) {
					quantity = Long.parseLong(req.getParameter("quantity"));
				}
				HttpSession session = req.getSession();
				if (session.getAttribute("order") == null) {
					OrderModel order = new OrderModel();
					BillProductModel item = new BillProductModel();
					List<BillProductModel> listItems = new ArrayList<BillProductModel>();
					item.setId(orderId);
					item.setQuantity(quantity);
					item.setProductModel(productModel);				
					item.setUnitPrice(productModel.getPrice());
					listItems.add(item);
					order.setBillProducts(listItems);
					order.setTotalPrice(productModel.getPrice() * item.getQuantity());
					totalPrices =  totalPrices + order.getTotalPrice();
					session.setAttribute("order", order);
					req.setAttribute("productModel", productModel);
					req.setAttribute("totalPrice", totalPrices);
				} else {
					OrderModel order = (OrderModel) session.getAttribute("order");
					List<BillProductModel> listItems = order.getBillProducts();
					boolean check = false;
					for (BillProductModel item : listItems) {
						if (item.getProductModel().getId() == productModel.getId()) {
							item.setQuantity(item.getQuantity() + quantity);
							order.setTotalPrice(productModel.getPrice() * item.getQuantity());
							totalPrices =  totalPrices + order.getTotalPrice();
							check = true;
						}
					}
					if (check == false) {
						BillProductModel item = new BillProductModel();
						item.setQuantity(quantity);
						item.setProductModel(productModel);
						item.setUnitPrice(productModel.getPrice());
						listItems.add(item);
						order.setTotalPrice(productModel.getPrice() * item.getQuantity() + order.getTotalPrice());
						totalPrices =  totalPrices + order.getTotalPrice();
					}
					
					session.setAttribute("order", order);
				}
				req.setAttribute("totalPrice", totalPrices);
			}
			resp.sendRedirect(req.getContextPath() + "/trang-chu");
		} else {
			resp.sendRedirect(req.getContextPath() + "/trang-chu");
		}
	}
}
