package ru.itis.inf.models;

import lombok.*;

import java.sql.Date;

@Getter
@Setter
@EqualsAndHashCode
@Builder
@ToString
public class Bouquet {
    private long id;
    private String type;
    private int price;
    private int number;
    private String name;
    private int numberOfFlowers;
    private String description;
    private Date productionDate;

}
