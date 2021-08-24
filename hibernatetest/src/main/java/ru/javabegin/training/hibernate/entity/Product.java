package ru.javabegin.training.hibernate.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter

public class Product implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long ItemNumber;

    @OneToOne
    private category CategoryNumber;

    @OneToOne
    private Models modelNumber;

    @Column
    private float Price;
}
