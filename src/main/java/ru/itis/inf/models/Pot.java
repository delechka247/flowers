package ru.itis.inf.models;

import lombok.*;

@Getter
@Setter
@EqualsAndHashCode
@Builder
@ToString
public class Pot {
    private long id;
    private String type;
    private int price;
    private int number;
    private String name;
    private int diameter;
    private String color;
    private String material;
    private String description;
}
