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
    @OneToOne
    @JoinColumn(name = "ItemNumber")
    private Product ItemNumber;

    @Column
    private String presence;

    @Column
    private String descr;

    @OneToMany
    @JoinColumn(name = "ServiceNumber")
    private List<AdditionalServices> ServiceNumb;

    @Column
    private double final_price;
}
