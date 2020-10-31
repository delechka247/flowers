package ru.itis.inf.services;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import ru.itis.inf.models.User;
import ru.itis.inf.repository.UsersRepository;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegistrationServiceImpl implements RegistrationService {
    private UsersRepository usersRepository;
    private PasswordEncoder passwordEncoder;
/*
    public static final Pattern VALID_EMAIL_REGEX =
            Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    public static boolean validate(String emailStr) {
        Matcher matcher = VALID_EMAIL_REGEX .matcher(emailStr);
        return matcher.find();
    }

 */

    public RegistrationServiceImpl(UsersRepository usersRepository) {
        this.usersRepository = usersRepository;
        this.passwordEncoder = new BCryptPasswordEncoder();
    }

    @Override
    public void register(String email, String password, String firstName, String phoneNumber, String birthday) {
        User user = User.builder()
                .email(email)
                .hashedPassword(passwordEncoder.encode(password))
                .firstName(firstName)
                .phoneNumber(phoneNumber)
                .birthday(birthday)
                .build();

        usersRepository.create(user);
        System.out.println("Успешно зарегистрирован: " + user);
    }

}
