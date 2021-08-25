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
    private int ItemNumber;

    @OneToOne(mappedBy = "categoryProduc", fetch = FetchType.LAZY)
    private Category categoryNumber;

    @OneToOne(mappedBy = "model", fetch = FetchType.LAZY)
    private Models modelNumber;

    private float Price;
}
