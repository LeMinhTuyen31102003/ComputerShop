package com.tuyenlm.computershop.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tuyenlm.computershop.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    // Custom query method to find users by full name
    List<User> findByFullname(String fullName);

    // Custom query method to find users by id
    Optional<User> findById(Long id);
}
