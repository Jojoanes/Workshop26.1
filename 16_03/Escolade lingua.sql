CREATE DATABASE escola;
USE escola;

-- aluno
CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    data_nasc DATE,
    email VARCHAR(100)
);

-- professor
CREATE TABLE professor (
    id_prof INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(100)
);

-- curso
CREATE TABLE curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    idioma VARCHAR(50) NOT NULL,
    dificuldade VARCHAR(30)
);

-- turma
CREATE TABLE turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    periodo VARCHAR(30),
    horario VARCHAR(50),
    id_curso INT NOT NULL,
    id_prof INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso),
    FOREIGN KEY (id_prof) REFERENCES professor(id_prof)
);

-- matricula
CREATE TABLE matricula (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    data_mat DATE NOT NULL,
    status ENUM('ativa', 'cancelada', 'trancada') NOT NULL,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);

--  pagamento
CREATE TABLE pagamento (
    id_pgto INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2) NOT NULL,
    data_vencimento DATE NOT NULL,
    data_pgto DATE,
    desconto DECIMAL(10,2),
    status ENUM('pago', 'pendente', 'atrasado') NOT NULL,
    id_matricula INT NOT NULL,
    FOREIGN KEY (id_matricula) REFERENCES matricula(id_matricula)
);