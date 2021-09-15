package serviceimpl;

import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.IOrderDao;
import model.BillProductModel;
import model.OrderModel;
import service.IOrderService;

public class OrderService implements IOrderService{
	
	@Inject
	private IOrderDao orderDao;

	@Override
	public OrderModel insertOrder(OrderModel order) {
		//order.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		Long orderId = orderDao.insertOrder(order);
		return orderDao.findOne(orderId);
	}
	
	public void delCart(HttpServletRequest req, Long id) {
		HttpSession session = req.getSession();
		OrderModel order = (OrderModel) session.getAttribute("order");
		List<BillProductModel> listItems = order.getBillProducts();
		for (Iterator<BillProductModel> item =  listItems.iterator(); item.hasNext();) {
			if (item.next().getId() == id) {
				item.remove();
			}
		}
		
		/*
		 * for (BillProductModel item : listItems) { item.getId();
		 * listItems.remove(item); }
		 */
	}

}
