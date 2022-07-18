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

INSERT INTO tbl_professor ( nome_professor, especialidade) 
	VALUES
		( "Bruno", "Web Design"),
        ( "Daniel", "Ciência de Dados"),
        ( "Edésio", "Web Design"),
        ( "Flávio", "Web Design"),
        ( "Janine", "Engenharia de Software"),
        ( "Rodrigo", "Web Design"),
        ( "Rubem", "Banco de Dados"),
        ( "Wellington", "Analista de Sistemas");
        
SELECT * FROM tbl_professor;

INSERT INTO tbl_disciplina ( nome_disciplina, carga_horaria, fk_registro_professor)
	VALUES
		("Mídias Audiovisuais", 80, 1),
        ("Algoritmos Complexos", 120, 2),
        ("Comunicação Visual", 80, 3),
        ("Mídias Sonoras", 80, 4),
        ("Análise de Requisitos", 120, 5),
        ("Computação Gráfica", 120, 6),
        ("Banco de Dados Distribuídos", 120, 7),
        ("Desenvolvimento Web", 120, 8);

SELECT * FROM tbl_professor;

INSERT INTO tbl_aluno ( nome_aluno, nota, fk_cod_disciplina)
	VALUES
		("Jesse Skinner",6, 1),
		("Yoshi Walsh",0, 2),
		("Eve Hampton",5, 3),
		("Joseph Hodges",1, 4),
		("Luke Reese",4, 5),
        ("Iola Mckee",6, 6),
		("Melissa Garner",3, 7),
		("Iola Britt",9, 8),
		("Chantale Hopkins",8, 1),
		("Quin Moon",6, 2);
        
SELECT * FROM tbl_aluno;


		
        


