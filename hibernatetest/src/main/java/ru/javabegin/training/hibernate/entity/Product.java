package ru.javabegin.training.hibernate.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter
@Table(name = "Product")
public class Product implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long ItemNumber;

    @OneToOne
    @JoinColumn(name = "categ")
    private category CategoryNumber;

    @OneToOne
    @JoinColumn(name = "model")
    private Models modelNumber;

    private float Price;
}
