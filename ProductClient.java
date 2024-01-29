package com.astra.demo;

public class ProductClient {

	public static void main(String[] args) {
		Product product = new Product(123, "samsung", 23000, "electronics");
		product.setProductPrice(56000);
		System.out.println(product.getProductName());
		System.out.println(product.getProductCategory());
		System.out.println(product.getProductPrice());

	}

}
