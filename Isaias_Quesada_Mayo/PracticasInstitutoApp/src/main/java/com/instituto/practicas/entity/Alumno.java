package com.instituto.practicas.entity;

import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Alumno {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;
    private String apellidos;

    @Column(unique = true)
    private String dni;

    @OneToMany(mappedBy = "alumno", cascade = CascadeType.ALL)
    private List<AcuerdoPracticas> acuerdos = new ArrayList<>();
}