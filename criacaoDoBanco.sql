DROP DATABASE senai;

CREATE DATABASE senai;

USE senai;

CREATE TABLE tbl_professor
(
	registro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_professor VARCHAR(40),
    especialidade VARCHAR(50)
);

CREATE TABLE tbl_disciplina
(
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_disciplina VARCHAR(50),
    carga_horaria INT(5),
    fk_registro_professor INT,
    FOREIGN KEY(fk_registro_professor) REFERENCES tbl_professor(registro)
);

CREATE TABLE tbl_aluno
(
	matricula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(40),
    nota INT(3),
    fk_cod_disciplina INT,
    FOREIGN KEY (fk_cod_disciplina) REFERENCES tbl_disciplina(codigo)
);

