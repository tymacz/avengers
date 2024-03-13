package com.java.Avengers.Entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Setter
@Entity
@Table(name = "incident")
public class IncidentEntity {
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id_incident;

    private String nature;
}
