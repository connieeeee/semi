package bit.com.a.dto;

import java.io.Serializable;

public class ProductDto implements Serializable {
	
	private String seller_id;
	
	private int product_seq;
	private String product_name;
	private String product_unit;
	private int product_trade_price;
	private String product_sort;
	private int product_piece_box;
	private String product_standard;
	
	private int seq_num;
	
	public ProductDto() {}

	public ProductDto(String seller_id, int product_seq, String product_name, String product_unit,
			int product_trade_price, String product_sort, int product_piece_box, String product_standard, int seq_num) {
		super();
		this.seller_id = seller_id;
		this.product_seq = product_seq;
		this.product_name = product_name;
		this.product_unit = product_unit;
		this.product_trade_price = product_trade_price;
		this.product_sort = product_sort;
		this.product_piece_box = product_piece_box;
		this.product_standard = product_standard;
		this.seq_num =  seq_num;
	}

	public ProductDto(String seller_id, String product_sort) {
		super();
		this.seller_id = seller_id;
		this.product_sort = product_sort;
	}

	public ProductDto(String seller_id, int seq_num) {
		super();
		this.seller_id = seller_id;
		this.seq_num = seq_num;
	}

	public int getSeq_num() {
		return seq_num;
	}

	public void setSeq_num(int seq_num) {
		this.seq_num = seq_num;
	}

	public String getSeller_id() {
		return seller_id;
	}

	public void setSeller_id(String seller_id) {
		this.seller_id = seller_id;
	}

	public int getProduct_seq() {
		return product_seq;
	}

	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getProduct_unit() {
		return product_unit;
	}

	public void setProduct_unit(String product_unit) {
		this.product_unit = product_unit;
	}

	public int getProduct_trade_price() {
		return product_trade_price;
	}

	public void setProduct_trade_price(int product_trade_price) {
		this.product_trade_price = product_trade_price;
	}

	public String getProduct_sort() {
		return product_sort;
	}

	public void setProduct_sort(String product_sort) {
		this.product_sort = product_sort;
	}

	public int getProduct_piece_box() {
		return product_piece_box;
	}

	public void setProduct_piece_box(int product_piece_box) {
		this.product_piece_box = product_piece_box;
	}

	public String getProduct_standard() {
		return product_standard;
	}

	public void setProduct_standard(String product_standard) {
		this.product_standard = product_standard;
	}

}
