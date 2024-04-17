/*Encadeamento de chaves relacionais*/

select emp.nome as empregado, dep.nome as departamento 
from empregado emp, departamento dep
where dep.cod_depto = emp.cod_depto;

/*Join, Inner e Left*/
select emp.nome as empregado, count(dep.cod_dep) 
from empregado emp 
inner join dependente dep 
on emp.cod_emp = dep.cod_emp
group by emp.nome;