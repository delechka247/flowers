package ru.itis.inf.services;

import ru.itis.inf.models.User;

public interface RegistrationService {
    String register(String email, String password, String firstName, String phoneNumber, String birthday);
}
