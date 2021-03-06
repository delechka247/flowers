package ru.itis.inf.services;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import ru.itis.inf.models.User;
import ru.itis.inf.repository.UsersRepository;
import ru.itis.inf.utils.InfoValidator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegistrationServiceImpl implements RegistrationService {
    private UsersRepository usersRepository;
    private PasswordEncoder passwordEncoder;
    private InfoValidator infoValidator;
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
        this.infoValidator = new InfoValidator();
    }

    @Override
    public String register(String email, String password, String firstName, String phoneNumber, String birthday) {
        if (email.equals("") || password.equals("") || firstName.equals("")
                || phoneNumber.equals("") || birthday.equals(""))
            return "Found empty field";
        if (usersRepository.isUserRegistered(email))
            return "This email is registered";

        if (!infoValidator.isEmailValid(email)) {
            return "Incorrect email";
        }
        if (!infoValidator.isPasswordValid(password)) {
            return "Incorrect password";
        }
        if (!infoValidator.isFirstNameValid(firstName)) {
            return "Incorrect name";
        }
        if (!infoValidator.isPhoneNumberValid(phoneNumber)) {
            return "Incorrect phone number";
        }


        User user = User.builder()
                .email(email)
                .hashedPassword(passwordEncoder.encode(password))
                .firstName(firstName)
                .phoneNumber(phoneNumber)
                .birthday(birthday)
                .build();

        usersRepository.create(user);
        System.out.println("Успешно зарегистрирован: " + user);
        return "ok";
    }

}
