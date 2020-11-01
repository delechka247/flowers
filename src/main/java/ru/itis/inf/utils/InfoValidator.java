package ru.itis.inf.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class InfoValidator {

    public boolean isEmailValid(String email){
        String regex = "[A-Za-z0-9\\._-]+@[A-Za-z0-9]+\\.[A-Za-z0-9]+";
        return isValid(regex, email) && (email.length() <= 40);

    }

    public boolean isPasswordValid(String password){
        String regex = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z!@#$%^&*]{6,20}";
        return isValid(regex, password);
    }

    public boolean isFirstNameValid(String firstName){
        String regex = "[А-Я][а-я]{2,19}";
        return isValid(regex, firstName);
    }

    public boolean isPhoneNumberValid(String phoneNumber){
        String regex = "(\\+7|8)[0-9]{10}";
        return isValid(regex, phoneNumber);
    }

    public boolean isValid(String regex, String str) {
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher( str + "");
        if (matcher.matches())
            return true;
        else
            return false;
    }
}
