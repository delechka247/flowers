package ru.itis.inf.services;

public interface LoginService {
    String login(String email, String password);
    Long getIdForSession(String email);
}


