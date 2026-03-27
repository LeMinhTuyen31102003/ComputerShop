package com.tuyenlm.computershop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tuyenlm.computershop.models.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

}
