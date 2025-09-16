#EXERCICIO 4 ANDRÉ
# 1
SELECT NmAluno 
FROM TbAluno, TbCidade
WHERE NmCidade = 'Ipatinga' AND TbAluno.CdCidade = TbCidade.CdCidade
ORDER BY NmAluno;

# 2
SELECT CdDisciplina, NmDisciplina
FROM TbDisciplina, TbProfessor
WHERE NmProfessor = 'Marlene' AND TbDisciplina.CdProfessor = TbProfessor.CdProfessor;

# 3
SELECT NmDisciplina, Nota
FROM TbDisciplina, TbAluno, TbNota
WHERE NmAluno = 'Maria' AND TbNota.CdAluno = TbAluno.CdAluno AND TbNota.CdDisciplina = TbDisciplina.CdDisciplina
ORDER BY NmDisciplina;

# 4
SELECT NmAluno, NmDisciplina, Nota
FROM TbDisciplina, TbAluno, TbNota, TbProfessor
WHERE NmProfessor = 'Marcelo Balbino' AND TbProfessor.CdProfessor = TbDisciplina.CdProfessor AND TbDisciplina.CdDisciplina = TbNota.CdDisciplina AND TbNota.CdAluno = TbAluno.CdAluno
ORDER BY NmAluno;

# 5
SELECT NmProfessor
FROM TbProfessor
WHERE Sexo = 'F' AND NmProfessor like 'M%';

# 6
SELECT AVG(CargaHoraria)
FROM TbDisciplina;

# 7
SELECT SUM(CargaHoraria)
FROM TbDisciplina;

# 8
SELECT MAX(CargaHoraria) as Maior, MIN(CargaHoraria) as Menor
FROM TbDisciplina;

# 9
SELECT Count(*) as Qtd
FROM TbDisciplina, TbProfessor
WHERE NmProfessor = 'Marcelo Balbino' AND TbDisciplina.CdProfessor = TbProfessor.CdProfessor;

# 10
SELECT Count(*) as Qtd
FROM TbProfessor, TbCidade
WHERE NmCidade = 'Tim teo' AND TbProfessor.CdCidade = TbCidade.CdCidade;

# 11
SELECT MAX(Nota) as Maior
FROM TbDisciplina, TbNota
WHERE NmDisciplina = 'Empreendedorismo' AND TbNota.CdDisciplina = TbDisciplina.CdDisciplina;

# 12
SELECT AVG(Nota) as Media
FROM TbDisciplina, TbNota
WHERE NmDisciplina = 'Projeto de Software' AND TbNota.CdDisciplina = TbDisciplina.CdDisciplina;

# 13
SELECT MAX(Nota) as Maior
FROM TbNota, TbDisciplina, TbProfessor
WHERE NmProfessor = 'Marcelo Balbino' AND TbDisciplina.CdProfessor = TbProfessor.CdProfessor AND TbNota.CdDisciplina = TbDisciplina.CdDisciplina;

# 14
INSERT INTO TbProfessor VALUES 
(NULL, 'Douglas', 'M', 1);

# 15
UPDATE TbDisciplina
SET CargaHoraria = 120
WHERE CdDisciplina = 1;

# 16
DELETE FROM TbDisciplina
WHERE CdDisciplina = 5;
