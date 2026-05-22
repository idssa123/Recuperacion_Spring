package com.instituto.practicas.controller;

import com.instituto.practicas.entity.Alumno;
import com.instituto.practicas.service.AlumnoService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/api/alumnos")
@RequiredArgsConstructor
public class AlumnoRestController {

    private final AlumnoService alumnoService;

    @GetMapping
    public List<Alumno> listar() {
        return alumnoService.listarTodos();
    }

    @PostMapping
    public Alumno crear(@RequestBody Alumno alumno) {
        return alumnoService.guardar(alumno);
    }

    @PutMapping("/{id}")
    public Alumno actualizar(@PathVariable Long id, @RequestBody Alumno alumno) {
        alumno.setId(id);
        return alumnoService.guardar(alumno);
    }

    @DeleteMapping("/{id}")
    public void eliminar(@PathVariable Long id) {
        alumnoService.eliminar(id);
    }

    @GetMapping("/{id}")
    public Alumno obtener(@PathVariable Long id) {
        return alumnoService.obtenerPorId(id);
    }

    @GetMapping("/{id}/retenciones")
    public BigDecimal calcularRetenciones(@PathVariable Long id) {
        return alumnoService.calcularRetenciones(id);
    }
}