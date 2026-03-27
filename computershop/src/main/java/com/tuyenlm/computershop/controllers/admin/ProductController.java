package com.tuyenlm.computershop.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tuyenlm.computershop.models.Product;
import com.tuyenlm.computershop.services.ProductService;
import com.tuyenlm.computershop.services.UploadFileService;

@Controller
public class ProductController {
    private final ProductService productService;
    private final UploadFileService uploadFileService;

    public ProductController(ProductService productService, UploadFileService uploadFileService) {
        this.productService = productService;
        this.uploadFileService = uploadFileService;
    }

    @GetMapping("/admin/products")
    public String GetProducts() {
        return "admin/product/show";
    }

    @GetMapping("/admin/products/create")
    public String createProduct(Model model) {
        model.addAttribute("product", new Product());
        return "admin/product/create";
    }

    @PostMapping("/admin/products/create")
    public String createProduct(@ModelAttribute("product") Product product, @RequestParam MultipartFile imageFile) {
        // Handle image upload logic here if needed
        String imageUrl = uploadFileService.saveFile(imageFile, "product"); // Upload the image and get the URL
        product.setImageUrl(imageUrl);
        productService.saveProduct(product);
        return "redirect:/admin/products";
    }

}
