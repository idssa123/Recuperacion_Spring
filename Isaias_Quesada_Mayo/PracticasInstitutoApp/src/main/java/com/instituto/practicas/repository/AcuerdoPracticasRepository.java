package com.instituto.practicas.repository;

import com.instituto.practicas.entity.AcuerdoPracticas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.math.BigDecimal;
import java.util.List;

public interface AcuerdoPracticasRepository extends JpaRepository<AcuerdoPracticas, Long> {

    List<AcuerdoPracticas> findByModalidad(String modalidad);

    @Query(value = "SELECT COALESCE(SUM(bolsa_ayuda_anual),0) FROM acuerdo_practicas WHERE alumno_id = ?1", nativeQuery = true)
    BigDecimal calcularTotalBecasAlumno(Long alumnoId);
}