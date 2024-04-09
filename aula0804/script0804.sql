/*seletores acumuladores e filtros*/
use empregados_db;
select * from departamento where cod_depto >= 2 and cod_depto <= 5;
select * from departamento where cod_depto % 2 = 0;
select * from departamento where cod_depto % 2 = 1;
select count(*) as numero_deptp from departamento;
select nome as Nome_Depto from departamento where cod_depto > 3;

/*Prática de Acumuladores e Filtros*/

select * from empregado;
select * from empregado where salario <= (3*1413);
select * from empregado where cod_depto = 1;
select * from empregado where cod_depto in (1,2,5);
select * from empregado where cod_depto not in (1,2,5);
select * from empregado where not salario <= (1413*3);
select * from empregado where nome like 'ANA %';
select * from empregado  inner join departamento on empregado.cod_depto = departamento.cod_depto where departamento.nome like '%Informatica';