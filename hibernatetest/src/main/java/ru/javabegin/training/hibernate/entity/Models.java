package ru.javabegin.training.hibernate.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter

public class Models implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long model;

    @Column
    private String denomination;

    @Column
    private String color;

    @Column
    private Integer height;

    @Column
    private Integer width;

    @Column
    private Double volume;

    @Column
    private Double freezer_volume;

    @Column
    private Double refrigerating_chamber_volume;

    @Column
    private Double depth;
}
