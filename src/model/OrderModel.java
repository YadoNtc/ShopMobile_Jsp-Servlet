package model;

import java.io.Serializable;
import java.util.List;

/**
 * Don hang
 * @author Admin
 *
 */
public class OrderModel extends AbstractModel<OrderModel> implements Serializable {
	private static final long serialVersionUID = 1L;

	private UserModel userBuy;
	private Long totalPrice;
	private List<BillProductModel> billProducts;
	private String shipName;
	private String shipEmail;
	private String shipMobile;
	private String shipAdress;

	
	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public String getShipMobile() {
		return shipMobile;
	}

	public void setShipMobile(String shipMobile) {
		this.shipMobile = shipMobile;
	}

	public String getShipAdress() {
		return shipAdress;
	}

	public void setShipAdress(String shipAdress) {
		this.shipAdress = shipAdress;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public UserModel getUserBuy() {
		return userBuy;
	}

	public void setUserBuy(UserModel userBuy) {
		this.userBuy = userBuy;
	}

	public Long getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Long totalPrice) {
		this.totalPrice = totalPrice;
	}

	public List<BillProductModel> getBillProducts() {
		return billProducts;
	}

	public void setBillProducts(List<BillProductModel> billProducts) {
		this.billProducts = billProducts;
	}

	public String getShipEmail() {
		return shipEmail;
	}

	public void setShipEmail(String shipEmail) {
		this.shipEmail = shipEmail;
	}

}
