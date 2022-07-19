# Apagar o banco
DROP DATABASE db_escola; 

# Cria o banco
CREATE DATABASE db_escola;

# Seleciona o banco para uso
USE db_escola;

#Cria a tabela professor
CREATE TABLE tbl_professor
(
	registro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_professor VARCHAR(40),
    especialidade VARCHAR(50)
);


# Cria a tabela disciplina
CREATE TABLE tbl_disciplina
(
	codigo INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(50),
    carga_horaria INT,
    fk_registro_professor INT,
    FOREIGN KEY (fk_registro_professor) 
		REFERENCES tbl_professor (registro)
);

# Cria a tabela aluno
CREATE TABLE tbl_aluno 
(
	matricula INT NOT NULL AUTO_INCREMENT,
    cpf CHAR(11),
	nome_aluno VARCHAR(45),
    nota INT,
    fk_codigo_disciplina INTEGER,
    PRIMARY KEY(matricula, cpf),
    FOREIGN KEY(fk_codigo_disciplina)
		REFERENCES tbl_disciplina (codigo)
);

# Altera a tabela aluno excluindo o campo cpf
ALTER TABLE tbl_aluno DROP cpf;












