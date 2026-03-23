package com.tuyenlm.computershop.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tuyenlm.computershop.models.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
