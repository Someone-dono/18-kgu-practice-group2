package ru.javabegin.training.hibernate.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Getter
@Setter
@Table(name = "Catalog")
public class Catalog implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long idCatalog;

    @OneToMany(mappedBy = "ItemNumber")
    private List<Product> ItemNumberProduct;

    private String presence;

    private String descr;

    @OneToMany(mappedBy = "ServiceNumber")
    private List<AdditionalServices> ServiceNumb;

    private double final_price;
}
