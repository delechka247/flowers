package ru.itis.inf.models;

public class User {
    private String email;
    private String hashedPassword;

    public User (String email, String hashedPassword) {
        this.email = email;
        this.hashedPassword = hashedPassword;
    }
}
