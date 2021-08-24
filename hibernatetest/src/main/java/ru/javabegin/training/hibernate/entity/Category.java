package ru.javabegin.training.hibernate.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Getter
@Setter
@Table(name = "category")
public class Category implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long idCategory;

    @OneToOne(mappedBy = "categoryNumber", fetch = FetchType.LAZY)
    private Product categoryProduct;

    private String namae;

}