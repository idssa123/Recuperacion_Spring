-- =================================================
-- INSERTS PARA LA ENTIDAD ALUMNO
-- =================================================
INSERT INTO alumno (id, nombre, apellidos, dni) VALUES (1, 'Juan Carlos', 'Valerón', '12345678A');
INSERT INTO alumno (id, nombre, apellidos, dni) VALUES (2, 'Lucas', 'Pérez', '87654321B');
INSERT INTO alumno (id, nombre, apellidos, dni) VALUES (3, 'Mauro', 'Silva', '11223344C');
INSERT INTO alumno (id, nombre, apellidos, dni) VALUES (4, 'David', 'Mella', '44332211D');

-- =================================================
-- INSERTS PARA LA ENTIDAD EMPRESA_TECH
-- =================================================
INSERT INTO empresa_tech (id, nombre_empresa, ciclo_asociado) VALUES (1, 'Altia', 'DAM');
INSERT INTO empresa_tech (id, nombre_empresa, ciclo_asociado) VALUES (2, 'R Cable', 'ASIR');
INSERT INTO empresa_tech (id, nombre_empresa, ciclo_asociado) VALUES (3, 'Inditex Tech', 'DAM');
INSERT INTO empresa_tech (id, nombre_empresa, ciclo_asociado) VALUES (4, 'Igalia', 'SMR');
INSERT INTO empresa_tech (id, nombre_empresa, ciclo_asociado) VALUES (5, 'Plexus', 'ASIR');
INSERT INTO empresa_tech (id, nombre_empresa, ciclo_asociado) VALUES (6, 'NTT Data', 'DAM');

-- =================================================
-- INSERTS PARA LA ENTIDAD ACUERDO_PRACTICAS (N:M)
-- Cumpliendo: 1 empresa por curso académico por alumno
-- =================================================

-- Historial de Juan Carlos (Alumno 1)
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (1, 1, 4, 2020, 'FCT Tradicional', 1850.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (2, 1, 4, 2021, 'FP Dual', 2100.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (3, 1, 1, 2022, 'Beca Extraordinaria', 2800.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (4, 1, 1, 2023, 'Beca Extraordinaria', 3000.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (5, 1, 1, 2024, 'Beca Extraordinaria', 3200.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (6, 1, 6, 2025, 'Beca Extraordinaria', 4500.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (7, 1, 6, 2026, 'Beca Extraordinaria', 4800.00);

-- Historial de Lucas (Alumno 2)
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (8, 2, 5, 2020, 'FP Dual', 2200.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (9, 2, 5, 2021, 'Beca Extraordinaria', 2500.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (10, 2, 2, 2022, 'Beca Extraordinaria', 3500.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (11, 2, 2, 2023, 'Beca Extraordinaria', 3700.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (12, 2, 3, 2024, 'Beca Extraordinaria', 5000.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (13, 2, 3, 2025, 'Beca Extraordinaria', 5200.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (14, 2, 3, 2026, 'Beca Extraordinaria', 5500.00);

-- Historial de Mauro (Alumno 3)
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (15, 3, 1, 2020, 'Beca Extraordinaria', 4000.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (16, 3, 1, 2021, 'Beca Extraordinaria', 4200.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (17, 3, 6, 2022, 'Beca Extraordinaria', 5500.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (18, 3, 6, 2023, 'Beca Extraordinaria', 5800.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (19, 3, 6, 2024, 'Beca Extraordinaria', 6000.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (20, 3, 3, 2025, 'Beca Extraordinaria', 6500.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (21, 3, 3, 2026, 'Beca Extraordinaria', 6800.00);

-- Historial de David (Alumno 4)
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (22, 4, 2, 2020, 'FCT Tradicional', 1500.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (23, 4, 2, 2021, 'FP Dual', 1900.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (24, 4, 5, 2022, 'FP Dual', 2400.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (25, 4, 5, 2023, 'Beca Extraordinaria', 2700.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (26, 4, 1, 2024, 'Beca Extraordinaria', 3300.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (27, 4, 1, 2025, 'Beca Extraordinaria', 3500.00);
INSERT INTO acuerdo_practicas (id, alumno_id, empresa_id, curso_academico, modalidad, bolsa_ayuda_anual) VALUES (28, 4, 1, 2026, 'Beca Extraordinaria', 3800.00);