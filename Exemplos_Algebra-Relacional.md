## [Relax](https://dbis-uibk.github.io/relax/calc/local/uibk/local/6)

### -- 1) Nome de todos os funcionários  
π Fname, Lname (EMPLOYEE)

### -- 2) Nome e endereço dos funcionarios do sexo Feminino  
Fname, Address (σ Sex = 'F' (EMPLOYEE))

### -- 3) Nome do funcionario e do seu departamento  
π Fname, Dname (EMPLOYEE ⨝ Dno = Dnumber DEPARTMENT)

### -- 4) Nome dos funcionarios e dependentes  
π Fname (EMPLOYEE) ∪ π Dependent_name (DEPENDENT)
