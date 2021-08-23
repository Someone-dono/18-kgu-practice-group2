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

public class category implements Serializable {
    @Id
    @GeneratedValue(stradegy = GenerationType.IDENTITY)
    private long categ;
    private String namae;

}
