CREATE TABLE CURSO (
    ID_CURSO  INTEGER NOT NULL,
    CODIGO    INTEGER NOT NULL,
    NOME      VARCHAR(50) NOT NULL,
    VALOR     NUMERIC(15,2)
);

/******************************************************************************/

ALTER TABLE CURSO ADD CONSTRAINT PK_CURSO PRIMARY KEY (ID_CURSO);

/******************************************************************************/
CREATE TABLE ALUNOS (
    ID_ALUNO         INTEGER NOT NULL,
    ID_CURSO         INTEGER NOT NULL,
    NOME             VARCHAR(80) NOT NULL,
    DATA_NASCIMENTO  DATE,
    EMAIL            VARCHAR(50)
);


ALTER TABLE ALUNOS ADD CONSTRAINT PK_ALUNOS PRIMARY KEY (ID_ALUNO);

/******************************************************************************/

ALTER TABLE ALUNOS ADD CONSTRAINT FK_ALUNOS_CURSO FOREIGN KEY (ID_CURSO) REFERENCES CURSO (ID_CURSO);