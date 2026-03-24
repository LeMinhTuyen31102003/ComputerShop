package com.tuyenlm.computershop.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.tuyenlm.computershop.models.User;
import com.tuyenlm.computershop.repositories.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void saveUser(User user) {
        userRepository.save(user);
    }

    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    public List<User> findAllUsersByName(String name) {
        return userRepository.findByFullname(name);
    }

    public Optional<User> findUserById(Long id) {
        return userRepository.findById(id);
    }

    public void updateUser(User user) {
        Optional<User> currentUser = userRepository.findById(user.getId());
        if (currentUser.isPresent()) {
            User updatedUser = currentUser.get();
            updatedUser.setFullname(user.getFullname());
            updatedUser.setPhone(user.getPhone());
            updatedUser.setAddress(user.getAddress());
            userRepository.save(updatedUser);
        } else {
            throw new IllegalArgumentException("User not found with id: " + user.getId());
        }
    }

    public void deleteUserById(Long id) {
        userRepository.deleteById(id);
    }
}
