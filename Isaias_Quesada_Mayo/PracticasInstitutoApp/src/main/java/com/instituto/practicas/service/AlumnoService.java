package com.instituto.practicas.service;

import com.instituto.practicas.entity.Alumno;
import com.instituto.practicas.repository.AcuerdoPracticasRepository;
import com.instituto.practicas.repository.AlumnoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class AlumnoService {

    private final AlumnoRepository alumnoRepository;
    private final AcuerdoPracticasRepository acuerdoRepository;

    public List<Alumno> listarTodos() {
        return alumnoRepository.findAll();
    }

    public Alumno guardar(Alumno alumno) {
        return alumnoRepository.save(alumno);
    }

    public Alumno obtenerPorId(Long id) {
        return alumnoRepository.findById(id).orElseThrow();
    }

    public void eliminar(Long id) {
        alumnoRepository.deleteById(id);
    }

    public BigDecimal calcularRetenciones(Long alumnoId) {
        BigDecimal total = acuerdoRepository.calcularTotalBecasAlumno(alumnoId);
        return total.multiply(BigDecimal.valueOf(0.19));
    }

    public BigDecimal totalBecas(Long alumnoId) {
        return acuerdoRepository.calcularTotalBecasAlumno(alumnoId);
    }
}