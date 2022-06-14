package com.cognizant.fraudmanagementsystem.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import com.cognizant.fraudmanagementsystem.model.Admin;
import com.cognizant.fraudmanagementsystem.repositories.AdminRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    
    private AdminRepository adminRepository;
    private List<Admin> admins = new ArrayList<>();

    @Autowired
    public AdminService(AdminRepository adminRepository) {
        this.adminRepository = adminRepository;
        admins = this.adminRepository.getAllAdmins();
    }

    public Optional<Admin> isValid(String userId, String password) {
        return admins.stream()
                    .filter(admin-> 
                        admin.getId().equals(userId) && 
                        admin.getPassword().equals(password)
                    ).findAny();
    }

    public boolean addAdmin(Admin admin) {
        try {
            adminRepository.addAdmin(admin);
            admins = adminRepository.getAllAdmins();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public boolean isSecurityAnswerCorrect(
        String id,
        String firstAnswer,
        String secondAnswer,
        String thirdAnswer
    ) {
        return admins.stream()
            .filter(admin ->
                admin.getId().equals(id) &&
                admin.getFirstAnswer().equals(firstAnswer) &&
                admin.getSecondAnswer().equals(secondAnswer) &&
                admin.getThirdAnswer().equals(thirdAnswer)
            ).findAny().isPresent();
    }

    public void updatePassword(String id, String newPassword) {
        adminRepository.updatePassword(id, newPassword);
        admins = adminRepository.getAllAdmins();
    }
}
