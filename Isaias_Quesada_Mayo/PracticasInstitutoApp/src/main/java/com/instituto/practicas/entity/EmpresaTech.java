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
public class EmpresaTech {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombreEmpresa;
    private String cicloAsociado;

    @OneToMany(mappedBy = "empresa")
    private List<AcuerdoPracticas> acuerdos = new ArrayList<>();
}