### backend feito em dart com Framawork aqueduct utilizando banco de dados postgres

1-cria um banco dados e-commerce no postgre
CREATE DATABASE e-commerce;
2- criar usuario
CREATE USER admin WITH PASSWORD 'admin';

3-dar permicoes ao usuario admin ao banco e-commerce
GRANT ALL ON DATABASE e-commerce TO admin;
