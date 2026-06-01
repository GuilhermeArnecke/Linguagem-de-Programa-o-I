CREATE TABLE personagem (
    id_perso SERIAL PRIMARY KEY,
    nome_perso VARCHAR(100) NOT NULL,
    vida_perso INT NOT NULL
);

CREATE TABLE arma (
    id_arma SERIAL PRIMARY KEY,
    nome_arma VARCHAR(100) NOT NULL,
    material_arma VARCHAR(50) NOT NULL,
    dano_arma INT NOT NULL
);

CREATE TABLE status (
    id_status SERIAL PRIMARY KEY,

    id_jogador INT NOT NULL,
    id_arma INT NOT NULL,

    nome_jogador VARCHAR(100) NOT NULL,
    vida_jogador INT NOT NULL,

    nome_arma VARCHAR(100) NOT NULL,
    material_arma VARCHAR(50) NOT NULL,
    dano_arma INT NOT NULL,

    CONSTRAINT fk_status_personagem
        FOREIGN KEY (id_jogador)
        REFERENCES personagem(id_perso),

    CONSTRAINT fk_status_arma
        FOREIGN KEY (id_arma)
        REFERENCES arma(id_arma)
);