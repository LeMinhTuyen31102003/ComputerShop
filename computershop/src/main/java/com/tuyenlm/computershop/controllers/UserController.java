package com.tuyenlm.computershop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tuyenlm.computershop.models.User;
import com.tuyenlm.computershop.services.UserService;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/admin/users/create", method = RequestMethod.GET)
    public String showCreateUserForm(Model model) {
        model.addAttribute("user", new User()); // Add an empty User object to the model
        return "admin/users/create"; // Return the view name for the create user form
    }

    @RequestMapping(value = "/admin/users/create", method = RequestMethod.POST)
    public String createUser(@ModelAttribute("user") User user, RedirectAttributes model) {
        userService.saveUser(user); // Save the user to the database
        model.addFlashAttribute("successMessage", "User created successfully!");
        return "redirect:/admin/users/create"; // Redirect to the same page with a success message
    }
}
