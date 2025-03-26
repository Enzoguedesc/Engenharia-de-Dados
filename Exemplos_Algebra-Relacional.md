## [Relax](https://dbis-uibk.github.io/relax/calc/local/uibk/local/6)

### -- 1) Nome de todos os funcionários  
> π Fname, Lname (EMPLOYEE)  

### -- 2) Nome e endereço dos funcionarios do sexo Feminino   
> Fname, Address (σ Sex = 'F' (EMPLOYEE))  

### -- 3) Nome do funcionario e do seu departamento  
> π Fname, Dname (EMPLOYEE ⨝ Dno = Dnumber DEPARTMENT)  

### -- 4) Nome dos funcionarios e dependentes  
> π Fname (EMPLOYEE) ∪ π Dependent_name (DEPENDENT)  

### -- 5) Recupere o nome e sobrenome de todos os empregados  
> π Fname, Lname (EMPLOYEE)  

### -- 6) Recupere o nome de todos os projetos  
> π Pname (PROJECT)  

### -- 7) Recupere o nome, o grau de parentesco e o sexo de todos os dependentes  
> π Dependent_name, Relationship, Sex (DEPENDENT)  

### -- 8) Recupere o nome dos empregado do sexo Feminino  
> π Fname (σ Sex = 'F' (EMPLOYEE))  

### -- 9) Recupere o nome dos dependentes que são filhos  
> π Dependent_name (σ Relationship = 'Son' (DEPENDENT))  

### -- 10) Recupere o nome do projeto realizado em Houston  
> π Pname (σ Plocation = 'Houston' (PROJECT))  

### -- 11) Recupere o nome de todos os funcionários e também o nome de todos os dependentes  
> π Fname (EMPLOYEE) ∪ π Dependent_name (DEPENDENT)  

### -- 12) Recupere o nome de todos os funcionários do sexo feminino que participaram de algum projeto   
-- ?  

### -- 13) Recupere o nome de todos os funcionários que não participaram de nenhum projeto  
-- ?  

### -- 14) Recupere o nome dos funcionários e as possibilidades de projetos que eles podem participar  
-- ?  

### -- 15) Recupere todas as localizações existentes no database  
> π Dlocation (DEPT_LOCATIONS)   
