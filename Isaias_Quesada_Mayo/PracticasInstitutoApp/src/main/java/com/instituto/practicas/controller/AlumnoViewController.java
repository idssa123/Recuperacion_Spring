package com.instituto.practicas.controller;

import com.instituto.practicas.entity.Alumno;
import com.instituto.practicas.service.AlumnoService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.Comparator;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class AlumnoViewController {

    private final AlumnoService alumnoService;

    @GetMapping("/")
    public String listar(Model model) {

        List<Alumno> alumnos = alumnoService.listarTodos();

        Long mejorAlumnoId = alumnos.stream()
                .max(Comparator.comparing(a ->
                        alumnoService.totalBecas(a.getId() == null ? 0L : a.getId())))
                .map(Alumno::getId)
                .orElse(null);

        model.addAttribute("alumnos", alumnos);
        model.addAttribute("mejorAlumnoId", mejorAlumnoId);

        return "index";
    }

    @GetMapping("/nuevo")
    public String formulario(Model model) {
        model.addAttribute("alumno", new Alumno());
        return "nuevo";
    }

    @PostMapping("/guardar")
    public String guardar(@ModelAttribute Alumno alumno) {
        alumnoService.guardar(alumno);
        return "redirect:/";
    }
}