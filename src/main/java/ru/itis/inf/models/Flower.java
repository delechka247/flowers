package ru.itis.inf.models;

import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@Builder
@ToString
public class Flower {
    private long id;
    private String type;
    private int price;
    private int number;
    private String name;
    private int stemLength;
    private String color;
    private String description;
}
