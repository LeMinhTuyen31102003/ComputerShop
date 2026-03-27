package com.tuyenlm.computershop.configs;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.tuyenlm.computershop.models.Role;
import com.tuyenlm.computershop.repositories.RoleRepository;

@Configuration
public class RoleDataInitializerConfig {

    @Bean
    CommandLineRunner initDefaultRoles(RoleRepository roleRepository) {
        return args -> {
            createRoleIfMissing(roleRepository, "USER", "Default role for normal users");
            createRoleIfMissing(roleRepository, "ADMIN", "Default role for administrators");
        };
    }

    private void createRoleIfMissing(RoleRepository roleRepository, String roleName, String description) {
        if (!roleRepository.existsByNameIgnoreCase(roleName)) {
            Role role = new Role();
            role.setName(roleName);
            role.setDescription(description);
            roleRepository.save(role);
        }
    }
}