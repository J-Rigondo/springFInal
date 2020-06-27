package kr.ac.inhatc.mvc.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.io.FileUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import kr.ac.inhatc.mvc.dao.ProductDao;
import kr.ac.inhatc.mvc.dto.FileDto;
import kr.ac.inhatc.mvc.dto.ProductDto;

@Service
public class ProductService {
	@Autowired
	ProductDao productDao;

	public List<ProductDto> selectProductList() throws Exception {
		return productDao.selectProductList();
	}

	public HashMap<?, ?> productDetail(String productId) throws Exception {
		return productDao.productDetail(productId);
	}

	public int addProduct(FileDto FD) throws Exception {
		//get absolute URL
		final DefaultResourceLoader defaultResourceLoader = new DefaultResourceLoader();
		Resource resource = defaultResourceLoader.getResource("classpath:static/res/img/");	
		System.out.println(resource.getURI().getPath());
		String fileUrl = resource.getURI().getPath() + FD.getProductImg().getOriginalFilename();
		
		File targetFile = new File(fileUrl);
		
		try {
			InputStream fileStream = FD.getProductImg().getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);

		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);
		}
		
		ProductDto PD = new ProductDto();
		
		PD.setProductId(FD.getProductId()); 
		PD.setProductName(FD.getProductName()); 
		PD.setUnitPrice(FD.getUnitPrice());
		PD.setDescription(FD.getDescription());
		PD.setManufacturer(FD.getManufacturer());
		PD.setCategory(FD.getCategory());
		PD.setUnitStock(FD.getUnitStock());
		PD.setProductImg(FD.getProductImg().getOriginalFilename());
		PD.setProductCondition(FD.getProductCondition());

		return productDao.addProduct(PD);

	}

	public int deleteProductDo(String productId) {
		return productDao.deleteProductDo(productId);
		
	}

	public int modifyProduct(FileDto FD) throws IOException {
		ProductDto PD = new ProductDto();
		
		PD.setProductId(FD.getProductId()); 
		PD.setProductName(FD.getProductName()); 
		PD.setUnitPrice(FD.getUnitPrice());
		PD.setDescription(FD.getDescription());
		PD.setManufacturer(FD.getManufacturer());
		PD.setCategory(FD.getCategory());
		PD.setUnitStock(FD.getUnitStock());						
		PD.setProductCondition(FD.getProductCondition());		
		
		if(!(FD.getProductImg().getOriginalFilename().equals(""))) {
			
			//get absolute URL
			final DefaultResourceLoader defaultResourceLoader = new DefaultResourceLoader();
			Resource resource = defaultResourceLoader.getResource("classpath:static/res/img/");		
			String fileUrl = resource.getURI().getPath() + FD.getProductImg().getOriginalFilename();
			
			File targetFile = new File(fileUrl);
			
			try {
				InputStream fileStream = FD.getProductImg().getInputStream();
				FileUtils.copyInputStreamToFile(fileStream, targetFile);
				PD.setProductImg(FD.getProductImg().getOriginalFilename());
				
			} catch (IOException e) {
				FileUtils.deleteQuietly(targetFile);
			}
		}			
				

				return productDao.modifyProduct(PD);
		
	}

}
