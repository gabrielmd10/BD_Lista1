UNIVERSIDADE CRUZEIRO DO SUL 

BANCO DE DADOS 

PROF. ME. ORLANDO DA SILVA JUNIOR 

 

 

LISTA DE EXERCÍCIOS 

 

 

Instruções 

 

Preencha o código SQL correspondente abaixo de cada questão. 

Modifique a cor da sua resposta para verde e a fonte para Consolas com tamanho 12. 

Salve este documento e mude o seu nome para: “BD_Atividade1_RGM_Nome.docx”, onde RGM é o número da sua matrícula e Nome é o seu primeiro nome. 

 

 

RGM: 23457422 

Nome Completo: Gabriel Medeiros Geraldo 

 

 

 

 

Para os exercícios abaixo, utilize o banco de dados SCOTT do Oracle Live SQL (https://livesql.oracle.com). 

 

 

 

--Exibir o nome, salário e cargo de todos os empregados com salário menor que 1500 e maior que 2500. Utilizar rótulos para as colunas. 
SELECT ENAME AS "NOME", SAL AS "SALARIO", JOB AS "CARGO"  
FROM SCOTT.EMP  
WHERE SAL <1500 OR SAL >2500; 

 

--Selecionar todos os empregados que tenham cargo de ‘clerk’ e salário superior a 1000. 
SELECT JOB, SAL  
FROM SCOTT.EMP  
WHERE JOB='CLERK' AND SAL >1000; 

 

--Selecionar nome, cargo e salário dos empregados que tenham cargo de SALESMAN, PRESIDENT, e recebam salário superior a 1500. 
SELECT ENAME, JOB, SAL   
FROM SCOTT.EMP   
WHERE JOB in ('SALESMAN','PRESIDENT') AND SAL >1500; 

 

--Selecionar os dados de todos os empregados do departamento 10 e 30. 
SELECT * FROM SCOTT.EMP 
WHERE DEPTNO in ('10','30'); 

 

--Selecionar os empregados que tenham salário igual 1500, 3000 e 5000. Ordenar o resultado pelo cargo. 
SELECT * FROM SCOTT.EMP  
WHERE SAL IN ('1500', '3000', '5000') ORDER BY JOB; 

 

--Exibir o salário mensal e anual de todos os empregados. 
SELECT SAL, SAL*12  
FROM SCOTT.EMP; 

 

--Selecionar todos os empregados que tenham o nome iniciado por ‘J’ e salário maior que 1500. 
SELECT * FROM SCOTT.EMP  
WHERE ENAME LIKE 'J%' AND SAL >1500; 

 

--Qual o nome da função que retorna a data do sistema?
DATE 

 

--Selecione os dados do empregado Jones. Utilize a função UPPER na solução.
SELECT * FROM SCOTT.EMP   
WHERE ENAME IN UPPER ('JONES'); 

 

--Exibir a soma e a média de todos os empregados dos departamentos 10 e 30.
SELECT SUM(SAL), AVG(SAL) FROM SCOTT.EMP  
WHERE DEPTNO IN '10' OR DEPTNO IN '30'; 