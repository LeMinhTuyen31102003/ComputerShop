package com.tuyenlm.computershop.services;

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
}
