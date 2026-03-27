package com.tuyenlm.computershop.services;

import org.springframework.stereotype.Service;

import com.tuyenlm.computershop.models.Product;
import com.tuyenlm.computershop.repositories.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public void saveProduct(Product product) {
        productRepository.save(product);
    }
}
