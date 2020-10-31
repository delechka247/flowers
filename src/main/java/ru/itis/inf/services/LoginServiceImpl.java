package ru.itis.inf.services;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import ru.itis.inf.models.User;
import ru.itis.inf.repository.UsersRepository;

public class LoginServiceImpl implements LoginService{

    private UsersRepository usersRepository;
    private PasswordEncoder passwordEncoder;

    public LoginServiceImpl(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
        this.passwordEncoder = new BCryptPasswordEncoder();
    }


    @Override
    public String login(String email, String password) {
        if (email.equals("") || password.equals(""))
            return "Found empty field";
        if (!usersRepository.isUserRegistered(email))
            return "This email is not registered";

        String hashedPassword = usersRepository.findUserByEmailToLogin(email);
        if(passwordEncoder.matches(password, hashedPassword))
            return "ok";
        else
            return "Wrong password";
    }

    @Override
    public Long getIdForSession(String email) {
        return usersRepository.getIdByEmail(email);
    }
}
