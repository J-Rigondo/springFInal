package kr.ac.inhatc.mvc.dao;

import java.util.HashMap;
import java.util.List;

import kr.ac.inhatc.mvc.dto.ProductDto;

public interface ProductDao {
	public List<ProductDto> selectProductList() throws Exception;
	public HashMap<?,?> productDetail(String productId) throws Exception;
	public int addProduct(ProductDto PD);
	public int deleteProductDo(String productId);
	public int modifyProduct(ProductDto pD);
	
}
