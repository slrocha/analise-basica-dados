/*operadores matemáticos baseados em funções*/

use empregados_db;
select avg(salario) as medida_renda from empregado where sexo = 'F';
select avg(salario) as medida_renda from empregado where sexo = 'M';
select max(salario) as maior, min(salario) as menor from empregado where sexo = 'M';
select max(salario) as maior, min(salario) as menor from empregado where sexo = 'F';
select (max(salario)-min(salario)) as inter_renda from empregado where sexo = 'F';
select sum(salario) as total_renda from empregado where sexo = 'M';
select sum(salario) as total_renda from empregado where sexo = 'F';

/*Funções de Formatação e Padronização*/
select nome as empregado, salario as renda, format((salario * 0.12),2) as inss, format((salario * 0.15),2) as irpf from empregado;
select char_length(nome) as tamanho_nome, (char_length(nome) + (rand()*char_length(nome))*cod_emp) as id_aleatorio from empregado;
select replace(nome, "A", "") as nome_modificado, char_length(replace(nome, "A", "")) as tamanho_nome,
(char_length(replace(nome, "A", "")) + (rand()*char_length(nome))*cod_emp) as id_aleatorio
from empregado;