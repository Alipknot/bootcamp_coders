use Bootcamp;
select e.rut, e.nombre, e.apellido_pat, e.apellido_mat, e.codigo_curso, c.nombre as "comuna" from estudiante e join comuna c on c.codigo_comuna = e.codigo_comuna where e.codigo_curso = "0012";
select c2.codigo_curso, c2.fecha_inicio, c2.fecha_termno, pf.descripcion, pf.duracion_horas from Curso c2 join Plan_Formativo pf on c2.codigo_plan_formativo = pf.codigo_plan_formativo; 
select pf.descripcion , count(pm.codigo_modulo) as "cantidad" from Plan_Formativo pf join Plan_Modulo pm on pf.codigo_plan_formativo = pm.codigo_plan_formativo group by pf.descripcion;
select pf.codigo_plan_formativo, pf.descripcion, pm.codigo_modulo, m.descripcion  from Plan_Formativo pf join Plan_Modulo pm ON pf.codigo_plan_formativo = pm.codigo_plan_formativo join Modulo m  on pm.codigo_modulo = m.codigo_modulo where pf.descripcion like "%FullStack%"; 
