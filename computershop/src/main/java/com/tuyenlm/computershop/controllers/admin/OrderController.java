package com.tuyenlm.computershop.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OrderController {
    @GetMapping("/admin/orders")
    public String GetDashboard() {
        return "admin/order/show";
    }

}
