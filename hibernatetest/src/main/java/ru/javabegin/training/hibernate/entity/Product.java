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
    private int idProduct;

    @ManyToOne(cascade = CascadeType.ALL)
    private Catalog ItemNumber;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "categoryProduct")
    private Category categoryNumber;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "model")
    private Models modelNumber;

    private float Price;
}
