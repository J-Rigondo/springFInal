package kr.ac.inhatc.mvc.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.inhatc.mvc.dto.ProductDto;

@Repository
public class ProductDaoImpl implements ProductDao {
	@Autowired
	protected SqlSessionTemplate sqlSession;
	//private static String namespace="kr.ac.inhatc.mvc.mapper.productMapper";
	
	@Override
	public List<ProductDto> selectProductList() throws Exception {
		
		return sqlSession.selectList("selectProductList","");
	}

	@Override
	public HashMap<?, ?> productDetail(String productId) throws Exception {
		
		return sqlSession.selectOne("productDetail",productId);
		
	}

	@Override
	public int addProduct(ProductDto PD) {	
		
		return sqlSession.insert("addProduct", PD);
	}

	@Override
	public int deleteProductDo(String productId) {
		
		return sqlSession.delete("deleteProductDo", productId);
		
	}

	@Override
	public int modifyProduct(ProductDto PD) {		
		return sqlSession.update("modifyProduct", PD);
	}

}
