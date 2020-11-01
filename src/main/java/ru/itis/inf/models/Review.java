package ru.itis.inf.models;

import lombok.*;

import java.sql.Date;

@Getter
@Setter
@EqualsAndHashCode
@Builder
@ToString
public class Review {
    private long id;
    private long productId;
    private long userId;
    private String username;
    private int stars;
    private String text;
    private Date date;
}
