package com.tuyenlm.computershop.controllers.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ItemController {

    @GetMapping("/item/detail")
    public String getItemDetail() {
        return "client/home/detail-product";
    }
}
