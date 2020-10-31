package ru.itis.inf.models;

<<<<<<< HEAD

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
=======
public class User {
    private String email;
    private String hashedPassword;

    public User (String email, String hashedPassword) {
        this.email = email;
        this.hashedPassword = hashedPassword;
    }
>>>>>>> fb8ff9fefce00b54316a1b4abbaad35f3b62b496
}
