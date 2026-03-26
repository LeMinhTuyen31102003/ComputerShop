package com.tuyenlm.computershop.controllers.admin;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tuyenlm.computershop.models.User;
import com.tuyenlm.computershop.services.UserService;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/admin/users", method = RequestMethod.GET)
    public String requestMethodName(Model model) {
        List<User> users = userService.findAllUsers(); // Fetch all users from the database
        model.addAttribute("users", users); // Add the list of users to the model
        return "admin/users/table-user"; // Return the view name for the user table
    }

    @GetMapping("/admin/users/{id}")
    public String showUserInformation(@PathVariable Long id, Model model) {
        Optional<User> user = userService.findUserById(id); // Fetch the user by ID from the database
        if (user.isPresent()) {
            model.addAttribute("id", id); // Add the user ID to the model
            model.addAttribute("user", user.get()); // Add the user to the model if found
        } else {
            model.addAttribute("errorMessage", "User not found!"); // Add an error message if user is not found
        }
        return "admin/users/information-user"; // Return the view name for the user information page
    }

    @GetMapping("/admin/users/update/{id}")
    public String showUpdateUserForm(@PathVariable Long id, Model model) {
        Optional<User> user = userService.findUserById(id); // Fetch the user by ID from the database
        if (user.isPresent()) {
            model.addAttribute("user", user.get()); // Add the user to the model if found
            return "admin/users/update-user"; // Return the view name for the update user form
        } else {
            model.addAttribute("errorMessage", "User not found!"); // Add an error message if user is not found
            return "redirect:/admin/users"; // Redirect to the user list page if user is not found
        }
    }

    @PostMapping("/admin/users/update")
    public String updateUser(@ModelAttribute User user, RedirectAttributes model) {
        userService.updateUser(user); // Update the user in the database
        model.addFlashAttribute("successMessage", "User updated successfully!"); // Add a success message to the model
        return "redirect:/admin/users"; // Redirect to the user list page after updating
    }

    @GetMapping("/admin/users/create")
    public String showCreateUserForm(Model model) {
        model.addAttribute("user", new User()); // Add an empty User object to the model
        return "admin/users/create"; // Return the view name for the create user form
    }

    @PostMapping("/admin/users/create")
    public String createUser(@ModelAttribute User user, RedirectAttributes model,
            @RequestParam MultipartFile avatarFile) {
        try {
            if (avatarFile != null && !avatarFile.isEmpty()) {
                String rootPath = System.getProperty("user.dir"); // Get the root path of the project
                Path uploadPath = Paths.get(rootPath, "src", "main", "webapp", "assets", "images", "avatar"); // Define
                                                                                                              // the
                                                                                                              // upload
                                                                                                              // path
                                                                                                              // for
                                                                                                              // avatars
                if (!Files.exists(uploadPath)) {
                    Files.createDirectories(uploadPath);
                }
                String fileName = System.currentTimeMillis() + "_" + avatarFile.getOriginalFilename();
                Path filePath = uploadPath.resolve(fileName);
                Files.copy(avatarFile.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);
                user.setAvatar(fileName);
            }
        } catch (Exception e) {
            model.addFlashAttribute("errorMessage", "Error uploading avatar: " + e.getMessage());
            return "redirect:/admin/users/create"; // Redirect back to the create user form if there's an error
        }
        userService.saveUser(user); // Save the user to the database
        model.addFlashAttribute("successMessage", "User created successfully!");
        return "redirect:/admin/users"; // Redirect to the same page with a success message
    }

    @GetMapping("/admin/users/delete/{id}")
    public String deleteUser(@PathVariable Long id, Model model) {
        if (id != null && userService.findUserById(id).isPresent()) {
            model.addAttribute("id", id); // Add the user ID to the model
            model.addAttribute("user", userService.findUserById(id).get()); // Add the user object to the model
        } else {
            model.addAttribute("errorMessage", "User not found!"); // Add an error message if user is not found
        }
        return "admin/users/delete-user"; // Return the view name for the delete user confirmation page
    }

    @PostMapping("/admin/users/delete")
    public String deleteUser(@ModelAttribute User user, RedirectAttributes model) {
        userService.deleteUserById(user.getId()); // Delete the user from the database
        model.addFlashAttribute("successMessage", "User deleted successfully!"); // Add a success message to the model
        return "redirect:/admin/users"; // Redirect to the user list page after deletion
    }
}
