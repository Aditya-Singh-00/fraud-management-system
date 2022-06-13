package com.cognizant.fraudmanagementsystem.services;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import com.cognizant.fraudmanagementsystem.model.Claim;
import com.cognizant.fraudmanagementsystem.repositories.ClaimRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClaimService {
    
    private ClaimRepository claimRepository;
    private List<Claim> claims = new ArrayList<>();

    @Autowired
    public ClaimService(ClaimRepository claimRepository) {
        this.claimRepository = claimRepository;
        claims = this.claimRepository.getAllClaims();
    }

    public List<Claim> getAllClaims() {
        return claims;
    }

    public Claim getClaimById(int id) {
        return claims.stream().filter(claim -> claim.getId() == id).findAny().get();
    }

    public void delete(Claim claim) {
        claimRepository.delete(claim);
        claims = claimRepository.getAllClaims();
    }

    public boolean addClaim(Claim claim) {
        try {
            claimRepository.addClaim(claim);
            claims = claimRepository.getAllClaims();
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            return false;
        }
    }

    public List<Claim> searchClaims(String query, String type) {
        if (type.equals("cardType")) {
            return claims.stream().filter(card -> card.getCardType().equalsIgnoreCase(query)).collect(Collectors.toList());
        }
        if (type.equals("userId")) {
            return claims.stream().filter(card -> card.getUserId().equals(query)).collect(Collectors.toList());
        }
        if (type.equals("fraudLevel")) {
            return claims.stream().filter(card -> card.getFraudLevel().equalsIgnoreCase(query)).collect(Collectors.toList());
        }
        return new ArrayList<>();
    }

}
