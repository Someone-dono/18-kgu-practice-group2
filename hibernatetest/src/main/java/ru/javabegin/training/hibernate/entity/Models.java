package ru.javabegin.training.hibernate.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
@Getter
@Setter

public class Models implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long model;
    private String denomination;
    private String color;
    private Integer height;
    private Integer width;
    private Double volume;
    private Double freezer_volume;
    private Double refrigerating_chamber_volume;
    private Double depth;
}
