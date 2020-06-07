package kr.ac.inhatc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value = {"kr.ac.inhatc.mvc.mapper"})
public class SpringShop201844014PjhApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringShop201844014PjhApplication.class, args);
	}

}
