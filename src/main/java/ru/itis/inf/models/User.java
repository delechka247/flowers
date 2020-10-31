package ru.itis.inf.models;


import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@Builder
@ToString
public class User {
    private Long id;
    private String email;
    private String hashedPassword;
    private String firstName;
    private String phoneNumber;
    private String birthday;
}
