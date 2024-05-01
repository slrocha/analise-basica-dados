start transaction;

insert into empregado(cod_depto, nome, dt_nascimento, sexo, dt_admissao, civil, salario) values(1,'VICTOR SENA ICOMA','1981-10-31','M','2021-02-02','C',2800);
insert into dependente(cod_emp, nome, dt_nascimento, sexo) values(17,'LETÍCIA ICOMA','2003-12-08','F');

SELECT * FROM empregados_db.empregado ;
SELECT * FROM empregados_db.dependente;


rollback;
commit;

drop trigger gatilho_exclusao_emp;

delimiter &&
create trigger gatilho_exclusao_emp  before delete on empregado
for each row 
begin
	delete from dependente dep where dep.cod_emp = OLD.cod_emp;
end
&&

start transaction;
delete from empregado where cod_emp = 1;
delete from dependente where cod_emp = 17;
SELECT * FROM empregados_db.empregado;
SELECT * FROM empregados_db.dependente;

rollback;
