package ru.itis.inf.utils;

import org.springframework.security.crypto.password.PasswordEncoder;

public class PasswordMaker {

    private PasswordEncoder passwordEncoder;
    private String hashedPassword;

    public PasswordMaker(String password) {
        String hashedPassword = passwordEncoder.encode(password);
        this.hashedPassword = hashedPassword;

    }

    public String getHashedPassword() {
        return hashedPassword;
    }



}
