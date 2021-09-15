package model;

import java.io.Serializable;

public class BillProductModel extends AbstractModel<BillProductModel> implements Serializable {

	private static final long serialVersionUID = 1L;
	private ProductModel productModel;
	private Long unitPrice;
	private Long quantity;
	
	public BillProductModel() {
		super();
	}

	public Long getQuantity() {
		return quantity;
	}


	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public Long getUnitPrice() {
		return unitPrice;
	}


	public void setUnitPrice(Long unitPrice) {
		this.unitPrice = unitPrice;
	}

	public ProductModel getProductModel() {
		return productModel;
	}

	public void setProductModel(ProductModel productModel) {
		this.productModel = productModel;
	}
}
