package com.product;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.product.model.Product;
import com.product.service.ProductService;
import com.product.service.ProductServiceImpl;

@WebServlet("/product")
public class ProductFormServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private ProductService productService = null;
	
	@Override
	public void init() throws ServletException {		
		super.init();		
		productService = new ProductServiceImpl();
	}	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// product_name=&product_description=&product_price=&product_vendor=

		String product_name = req.getParameter("product_name");
		String product_description = req.getParameter("product_description");
		Double product_price = Double.valueOf(req.getParameter("product_price"));
		String product_vendor = req.getParameter("product_vendor");

//		System.out.println("product_name " + product_name);
//		System.out.println("product_description " + product_description);
//		System.out.println("product_price " + product_price);
//		System.out.println("product_vendor " + product_vendor);

		Product product = new Product();
		product.setProductName(product_name);
		product.setProductDescription(product_description);
		product.setProductPrice(product_price);
		product.setProductVendor(product_vendor);

		int count = productService.inserProduct(product);		
		
		resp.setContentType("text/html");
		
		PrintWriter pw = resp.getWriter();
		
		if(count == 1) {
			pw.write("<h1>Product Inserted Successfully</h1>"
					+ "<h3><a href='product.html'> Add More Product </a> </h3>");
		}else {
			pw.write("Some Issue. Please contact System Administrator!!"
					+ "<h3><a href='index.jsp'> Go to Home </a></h3>");
		}	
	}

}
