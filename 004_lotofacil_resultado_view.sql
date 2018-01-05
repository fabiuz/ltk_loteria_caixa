/*
  Cria as tabelas, que terão os campos id consolidados, pra ficar melhor o carregamento ao chamar as views.
 */

/**
  Par x Ímpar, agrupado, por id par x impar.
 */
drop table if exists lotofacil.lotofacil_id_par_impar_agrupado;
create table lotofacil.lotofacil_id_par_impar_agrupado(
  par_impar_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT par_impar_agrupado_fk FOREIGN KEY (par_impar_id) REFERENCES lotofacil.lotofacil_id_par_impar(par_impar_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_par_impar_agrupado;
  Insert into lotofacil.lotofacil_id_par_impar_agrupado (par_impar_id, qt_vezes)
    SELECT par_impar_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by par_impar_id
    order by par_impar_id;
/**
  Par x Ímpar, agrupado, por id par x impar e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_par_impar_agrupado_por_qt;
create table lotofacil.lotofacil_id_par_impar_agrupado_por_qt(
  par_impar_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT par_impar_agrupado_por_qt_fk FOREIGN KEY (par_impar_id) REFERENCES lotofacil.lotofacil_id_par_impar(par_impar_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_par_impar_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_par_impar_agrupado_por_qt (par_impar_id, ltf_qt, qt_vezes)
  SELECT par_impar_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by par_impar_id, ltf_qt
  order by par_impar_id;


/** EXTERNO X INTERNO **/
/**
  externo x Interno, agrupado, por id externo x interno.
 */
drop table if exists lotofacil.lotofacil_id_externo_interno_agrupado;
create table lotofacil.lotofacil_id_externo_interno_agrupado(
  ext_int_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT externo_interno_agrupado_fk FOREIGN KEY (ext_int_id) REFERENCES lotofacil.lotofacil_id_externo_interno(ext_int_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_externo_interno_agrupado;
  Insert into lotofacil.lotofacil_id_externo_interno_agrupado (ext_int_id, qt_vezes)
    SELECT ext_int_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by ext_int_id
    order by ext_int_id;
/**
  externo x Interno, agrupado, por id externo x interno e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_externo_interno_agrupado_por_qt;
create table lotofacil.lotofacil_id_externo_interno_agrupado_por_qt(
  ext_int_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT externo_interno_agrupado_por_qt_fk FOREIGN KEY (ext_int_id) REFERENCES lotofacil.lotofacil_id_externo_interno(ext_int_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_externo_interno_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_externo_interno_agrupado_por_qt (ext_int_id, ltf_qt, qt_vezes)
  SELECT ext_int_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by ext_int_id, ltf_qt
  order by ext_int_id;


/** PRIMO X NÃO PRIMO
 */
/**
  primo x nao_primo, agrupado, por id primo x nao_primo.
 */
drop table if exists lotofacil.lotofacil_id_primo_agrupado;
create table lotofacil.lotofacil_id_primo_agrupado(
  prm_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT primo_agrupado_fk FOREIGN KEY (prm_id) REFERENCES lotofacil.lotofacil_id_primo(prm_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_primo_agrupado;
  Insert into lotofacil.lotofacil_id_primo_agrupado (prm_id, qt_vezes)
    SELECT prm_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by prm_id
    order by prm_id;
/**
  primo x nao_primo, agrupado, por id primo x nao_primo e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_primo_agrupado_por_qt;
create table lotofacil.lotofacil_id_primo_agrupado_por_qt(
  prm_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT primo_agrupado_por_qt_fk FOREIGN KEY (prm_id) REFERENCES lotofacil.lotofacil_id_primo(prm_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_primo_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_primo_agrupado_por_qt (prm_id, ltf_qt, qt_vezes)
  SELECT prm_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by prm_id, ltf_qt
  order by prm_id;

/*
  Horizontal.
 */
/**
  horizontal, agrupado, por id horizontal.
 */
drop table if exists lotofacil.lotofacil_id_horizontal_agrupado;
create table lotofacil.lotofacil_id_horizontal_agrupado(
  hrz_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT horizontal_agrupado_fk FOREIGN KEY (hrz_id) REFERENCES lotofacil.lotofacil_id_horizontal(hrz_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_horizontal_agrupado;
  Insert into lotofacil.lotofacil_id_horizontal_agrupado (hrz_id, qt_vezes)
    SELECT hrz_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by hrz_id
    order by hrz_id;
/**
  horizontal, agrupado, por id horizontal e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_horizontal_agrupado_por_qt;
create table lotofacil.lotofacil_id_horizontal_agrupado_por_qt(
  hrz_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT horizontal_agrupado_por_qt_fk FOREIGN KEY (hrz_id) REFERENCES lotofacil.lotofacil_id_horizontal(hrz_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_horizontal_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_horizontal_agrupado_por_qt (hrz_id, ltf_qt, qt_vezes)
  SELECT hrz_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by hrz_id, ltf_qt
  order by hrz_id;

/**
  Vertical.
 */
/**
  vertical, agrupado, por id vertical.
 */
drop table if exists lotofacil.lotofacil_id_vertical_agrupado;
create table lotofacil.lotofacil_id_vertical_agrupado(
  vrt_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT vertical_agrupado_fk FOREIGN KEY (vrt_id) REFERENCES lotofacil.lotofacil_id_vertical(vrt_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_vertical_agrupado;
  Insert into lotofacil.lotofacil_id_vertical_agrupado (vrt_id, qt_vezes)
    SELECT vrt_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by vrt_id
    order by vrt_id;
/**
  vertical, agrupado, por id vertical e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_vertical_agrupado_por_qt;
create table lotofacil.lotofacil_id_vertical_agrupado_por_qt(
  vrt_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT vertical_agrupado_por_qt_fk FOREIGN KEY (vrt_id) REFERENCES lotofacil.lotofacil_id_vertical(vrt_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_vertical_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_vertical_agrupado_por_qt (vrt_id, ltf_qt, qt_vezes)
  SELECT vrt_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by vrt_id, ltf_qt
  order by vrt_id;

/**
  Diagonal.
 */
/**
  diagonal, agrupado, por id diagonal.
 */
drop table if exists lotofacil.lotofacil_id_diagonal_agrupado;
create table lotofacil.lotofacil_id_diagonal_agrupado(
  dg_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT diagonal_agrupado_fk FOREIGN KEY (dg_id) REFERENCES lotofacil.lotofacil_id_diagonal(dg_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_diagonal_agrupado;
  Insert into lotofacil.lotofacil_id_diagonal_agrupado (dg_id, qt_vezes)
    SELECT dg_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by dg_id
    order by dg_id;
/**
  diagonal, agrupado, por id diagonal e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_diagonal_agrupado_por_qt;
create table lotofacil.lotofacil_id_diagonal_agrupado_por_qt(
  dg_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT diagonal_agrupado_por_qt_fk FOREIGN KEY (dg_id) REFERENCES lotofacil.lotofacil_id_diagonal(dg_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_diagonal_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_diagonal_agrupado_por_qt (dg_id, ltf_qt, qt_vezes)
  SELECT dg_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by dg_id, ltf_qt
  order by dg_id;

/*
  Quarteto.
 */
/**
  quarteto, agrupado, por id quarteto.
 */
drop table if exists lotofacil.lotofacil_id_quarteto_agrupado;
create table lotofacil.lotofacil_id_quarteto_agrupado(
  qrt_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT quarteto_agrupado_fk FOREIGN KEY (qrt_id) REFERENCES lotofacil.lotofacil_id_quarteto(qrt_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_quarteto_agrupado;
  Insert into lotofacil.lotofacil_id_quarteto_agrupado (qrt_id, qt_vezes)
    SELECT qrt_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by qrt_id
    order by qrt_id;
/**
  quarteto, agrupado, por id quarteto e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_quarteto_agrupado_por_qt;
create table lotofacil.lotofacil_id_quarteto_agrupado_por_qt(
  qrt_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT quarteto_agrupado_por_qt_fk FOREIGN KEY (qrt_id) REFERENCES lotofacil.lotofacil_id_quarteto(qrt_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_quarteto_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_quarteto_agrupado_por_qt (qrt_id, ltf_qt, qt_vezes)
  SELECT qrt_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by qrt_id, ltf_qt
  order by qrt_id;

/**
  Cruzeta.
 */
/**
  cruzeta, agrupado, por id cruzeta.
 */
drop table if exists lotofacil.lotofacil_id_cruzeta_agrupado;
create table lotofacil.lotofacil_id_cruzeta_agrupado(
  crz_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT cruzeta_agrupado_fk FOREIGN KEY (crz_id) REFERENCES lotofacil.lotofacil_id_cruzeta(crz_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_cruzeta_agrupado;
  Insert into lotofacil.lotofacil_id_cruzeta_agrupado (crz_id, qt_vezes)
    SELECT crz_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by crz_id
    order by crz_id;
/**
  cruzeta, agrupado, por id cruzeta e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_cruzeta_agrupado_por_qt;
create table lotofacil.lotofacil_id_cruzeta_agrupado_por_qt(
  crz_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT cruzeta_agrupado_por_qt_fk FOREIGN KEY (crz_id) REFERENCES lotofacil.lotofacil_id_cruzeta(crz_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_cruzeta_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_cruzeta_agrupado_por_qt (crz_id, ltf_qt, qt_vezes)
  SELECT crz_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by crz_id, ltf_qt
  order by crz_id;

/**
  Trio.
 */
/**
  trio, agrupado, por id trio.
 */
drop table if exists lotofacil.lotofacil_id_trio_agrupado;
create table lotofacil.lotofacil_id_trio_agrupado(
  trio_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT trio_agrupado_fk FOREIGN KEY (trio_id) REFERENCES lotofacil.lotofacil_id_trio(trio_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_trio_agrupado;
  Insert into lotofacil.lotofacil_id_trio_agrupado (trio_id, qt_vezes)
    SELECT trio_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by trio_id
    order by trio_id;
/**
  trio, agrupado, por id trio e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_trio_agrupado_por_qt;
create table lotofacil.lotofacil_id_trio_agrupado_por_qt(
  trio_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT trio_agrupado_por_qt_fk FOREIGN KEY (trio_id) REFERENCES lotofacil.lotofacil_id_trio(trio_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_trio_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_trio_agrupado_por_qt (trio_id, ltf_qt, qt_vezes)
  SELECT trio_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by trio_id, ltf_qt
  order by trio_id;

/**
  id_b1
 */
/**
  b1, agrupado, por id b1.
 */
drop table if exists lotofacil.lotofacil_id_b1_agrupado;
create table lotofacil.lotofacil_id_b1_agrupado(
  b1_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_agrupado_fk FOREIGN KEY (b1_id) REFERENCES lotofacil.lotofacil_id_b1(b1_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_agrupado;
  Insert into lotofacil.lotofacil_id_b1_agrupado (b1_id, qt_vezes)
    SELECT b1_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_id
    order by b1_id;
/**
  b1, agrupado, por id b1 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_agrupado_por_qt(
  b1_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_agrupado_por_qt_fk FOREIGN KEY (b1_id) REFERENCES lotofacil.lotofacil_id_b1(b1_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_agrupado_por_qt (b1_id, ltf_qt, qt_vezes)
  SELECT b1_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_id, ltf_qt
  order by b1_id;

/**
  b1_b4_b8_b12_b15
 */
/**
  b1_b4_b8_b12_b15, agrupado, por id b1_b4_b8_b12_b15.
 */
drop table if exists lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado;
create table lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado(
  b1_b4_b8_b12_b15_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b4_b8_b12_b15_agrupado_fk FOREIGN KEY (b1_b4_b8_b12_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b4_b8_b12_b15(b1_b4_b8_b12_b15_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado (b1_b4_b8_b12_b15_id, qt_vezes)
    SELECT b1_b4_b8_b12_b15_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b4_b8_b12_b15_id
    order by b1_b4_b8_b12_b15_id;
/**
  b1_b4_b8_b12_b15, agrupado, por id b1_b4_b8_b12_b15 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt(
  b1_b4_b8_b12_b15_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b4_b8_b12_b15_agrupado_por_qt_fk FOREIGN KEY (b1_b4_b8_b12_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b4_b8_b12_b15(b1_b4_b8_b12_b15_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt (b1_b4_b8_b12_b15_id, ltf_qt, qt_vezes)
  SELECT b1_b4_b8_b12_b15_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b4_b8_b12_b15_id, ltf_qt
  order by b1_b4_b8_b12_b15_id;

/**
  b1, b8, b15
 */
/**
  b1_b8_b15, agrupado, por id b1_b8_b15.
 */
drop table if exists lotofacil.lotofacil_id_b1_b8_b15_agrupado;
create table lotofacil.lotofacil_id_b1_b8_b15_agrupado(
  b1_b8_b15_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b8_b15_agrupado_fk FOREIGN KEY (b1_b8_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b8_b15(b1_b8_b15_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b8_b15_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b8_b15_agrupado (b1_b8_b15_id, qt_vezes)
    SELECT b1_b8_b15_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b8_b15_id
    order by b1_b8_b15_id;
/**
  b1_b8_b15, agrupado, por id b1_b8_b15 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt(
  b1_b8_b15_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b8_b15_agrupado_por_qt_fk FOREIGN KEY (b1_b8_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b8_b15(b1_b8_b15_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt (b1_b8_b15_id, ltf_qt, qt_vezes)
  SELECT b1_b8_b15_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b8_b15_id, ltf_qt
  order by b1_b8_b15_id;

/**
  b1_b15.
 */
/**
  b1_b15, agrupado, por id b1_b15.
 */
drop table if exists lotofacil.lotofacil_id_b1_b15_agrupado;
create table lotofacil.lotofacil_id_b1_b15_agrupado(
  b1_b15_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT b1_b15_agrupado_fk FOREIGN KEY (b1_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b15(b1_b15_id)
);
/**
  Script pra popular a tabela.
 */
  Delete from lotofacil.lotofacil_id_b1_b15_agrupado;
  Insert into lotofacil.lotofacil_id_b1_b15_agrupado (b1_b15_id, qt_vezes)
    SELECT b1_b15_id, count(*) as qt_vezes from lotofacil.lotofacil_id
      group by b1_b15_id
    order by b1_b15_id;
/**
  b1_b15, agrupado, por id b1_b15 e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_b1_b15_agrupado_por_qt;
create table lotofacil.lotofacil_id_b1_b15_agrupado_por_qt(
  b1_b15_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT b1_b15_agrupado_por_qt_fk FOREIGN KEY (b1_b15_id) REFERENCES lotofacil.lotofacil_id_b1_b15(b1_b15_id)
);

/*
  Script sql pra popular a tabela.
 */
Delete from lotofacil.lotofacil_id_b1_b15_agrupado_por_qt;
Insert into lotofacil.lotofacil_id_b1_b15_agrupado_por_qt (b1_b15_id, ltf_qt, qt_vezes)
  SELECT b1_b15_id, ltf_qt, count(*) as qt_vezes from lotofacil.lotofacil_id
    group by b1_b15_id, ltf_qt
  order by b1_b15_id;

/*
  Script sql pra popular a tabela novos x repetidos.
 */
/**
  No caso da tabela novos e repetidos, os dados é pego de uma tabela separada,
  ao invés de ser lotofacil_id, será lotofacil_novos_repetidos.
 */
drop table if exists lotofacil.lotofacil_id_novos_repetidos_agrupado;
create table lotofacil.lotofacil_id_novos_repetidos_agrupado(
  novos_repetidos_id numeric not null,
  qt_vezes numeric not null,

  CONSTRAINT novos_repetidos_agrupado_fk FOREIGN KEY (novos_repetidos_id) REFERENCES lotofacil.lotofacil_id_novos_repetidos(novos_repetidos_id)
);
alter table lotofacil.lotofacil_id_novos_repetidos_agrupado drop CONSTRAINT novos_repetidos_agrupado_fk;


/**
  novos_repetidos, agrupado, por id novos_repetidos e por quantidade de bolas.
 */
drop table if exists lotofacil.lotofacil_id_novos_repetidos_agrupado_por_qt;
create table lotofacil.lotofacil_id_novos_repetidos_agrupado_por_qt(
  novos_repetidos_id numeric not null,
  ltf_qt numeric not null check(ltf_qt in (15, 16, 17, 18)),
  qt_vezes numeric not null,
  CONSTRAINT novos_repetidos_agrupado_por_qt_fk FOREIGN KEY (novos_repetidos_id) REFERENCES lotofacil.lotofacil_id_novos_repetidos(novos_repetidos_id)
);

/**
  Apaga toda as tabelas, que serão usadas no view.
 */
drop view if exists lotofacil.v_lotofacil_resultado_horizontal;
drop view if exists lotofacil.v_lotofacil_resultado_horizontal_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_vertical;
drop view if exists lotofacil.v_lotofacil_resultado_vertical_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_diagonal;
drop view if exists lotofacil.v_lotofacil_resultado_diagonal_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_cruzeta;
drop view if exists lotofacil.v_lotofacil_resultado_cruzeta_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_quarteto;


drop view if exists lotofacil.v_lotofacil_resultado_externo_interno;
drop view if exists lotofacil.v_lotofacil_resultado_externo_interno_detalhado;

drop view if exists lotofacil.v_lotofacil_resultado_par_impar;
drop view if exists lotofacil.v_lotofacil_resultado_par_impar_detalhado;

/*
  Nas views abaixo, anteriormente, cada tipo de combinação do resultado da lotofacil
  tinha uma tabela específica, por exemplo,
  pra resultados das combinações pares e impares, os dados, eram recuperados da tabela
  lotofacil_resultado_par_impar;
  pra resultados das combinações externo x internos, os dados, eram recuperados da tabela
  lotofacil_resultado_externo_interno.
  Notei, que praticamente, estou fazendo várias tabelas separadas que poderiam estar juntas neste caso.
  Então, foi criada a tabela lotofacil.lotofacil_resultado_id pra cada combinação existe
  um unico campo.
  Então, nos visualizações abaixo que serão criadas, irei alterar cada tabela específica pra
  combinação pra a tabela lotofacil_resultado_id.
 */


drop view if exists lotofacil.v_lotofacil_resultado_par_impar;
create view lotofacil.v_lotofacil_resultado_par_impar AS
  Select ltf_agrupado.par_impar_id, par, impar, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.par_impar_id) as res_qt
    from lotofacil.lotofacil_id_par_impar_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_par_impar ltf_id
        on ltf_agrupado.par_impar_id = ltf_id.par_impar_id
  left join lotofacil.lotofacil_resultado_id ltf_res
        on ltf_id.par_impar_id = ltf_res.par_impar_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.par_impar_id, par, impar, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, par, impar;

drop view if exists lotofacil.v_lotofacil_resultado_externo_interno;
create view lotofacil.v_lotofacil_resultado_externo_interno AS
  Select ltf_agrupado.ext_int_id, externo, interno, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.ext_int_id) as res_qt
    from lotofacil.lotofacil_id_externo_interno_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_externo_interno ltf_id
        on ltf_agrupado.ext_int_id = ltf_id.ext_int_id
  left join lotofacil.lotofacil_resultado_id ltf_res
        on ltf_id.ext_int_id = ltf_res.ext_int_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.ext_int_id, externo, interno, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, externo, interno;

drop view if exists lotofacil.v_lotofacil_resultado_primo;
create view lotofacil.v_lotofacil_resultado_primo AS
  Select ltf_agrupado.prm_id, primo, nao_primo, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.prm_id) as res_qt
    from lotofacil.lotofacil_id_primo_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_primo ltf_id
        on ltf_agrupado.prm_id = ltf_id.prm_id
  left join lotofacil.lotofacil_resultado_id ltf_res
        on ltf_id.prm_id = ltf_res.prm_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.prm_id, primo, nao_primo, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, primo, nao_primo;

drop view if exists lotofacil.v_lotofacil_resultado_horizontal;
create view lotofacil.v_lotofacil_resultado_horizontal AS
  Select ltf_agrupado.hrz_id, hrz_1, hrz_2, hrz_3, hrz_4, hrz_5, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.hrz_id) as res_qt
    from lotofacil.lotofacil_id_horizontal_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_horizontal ltf_id
        on ltf_agrupado.hrz_id = ltf_id.hrz_id
  left join lotofacil.lotofacil_resultado_id ltf_res
        on ltf_id.hrz_id = ltf_res.hrz_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.hrz_id, hrz_1, hrz_2, hrz_3, hrz_4, hrz_5, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, hrz_1, hrz_2, hrz_3, hrz_4, hrz_5;

drop view if exists lotofacil.v_lotofacil_resultado_vertical;
create view lotofacil.v_lotofacil_resultado_vertical AS
  Select ltf_agrupado.vrt_id, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.vrt_id) as res_qt
    from lotofacil.lotofacil_id_vertical_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_vertical ltf_id
        on ltf_agrupado.vrt_id = ltf_id.vrt_id
  left join lotofacil.lotofacil_resultado_id ltf_res
        on ltf_id.vrt_id = ltf_res.vrt_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.vrt_id, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, vrt_1, vrt_2, vrt_3, vrt_4, vrt_5;

drop view if exists lotofacil.v_lotofacil_resultado_diagonal;
create view lotofacil.v_lotofacil_resultado_diagonal AS
  Select ltf_agrupado.dg_id, dg_1, dg_2, dg_3, dg_4, dg_5, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.dg_id) as res_qt
    from lotofacil.lotofacil_id_diagonal_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_diagonal ltf_id
        on ltf_agrupado.dg_id = ltf_id.dg_id
  left join lotofacil.lotofacil_resultado_id ltf_res
        on ltf_id.dg_id = ltf_res.dg_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.dg_id, dg_1, dg_2, dg_3, dg_4, dg_5, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, dg_1, dg_2, dg_3, dg_4, dg_5;

drop view if exists lotofacil.v_lotofacil_resultado_cruzeta;
create view lotofacil.v_lotofacil_resultado_cruzeta AS
  Select ltf_agrupado.crz_id, crz_1, crz_2, crz_3, crz_4, crz_5, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.crz_id) as res_qt
    from lotofacil.lotofacil_id_cruzeta_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_cruzeta ltf_id
        on ltf_agrupado.crz_id = ltf_id.crz_id
  left join lotofacil.lotofacil_resultado_id ltf_res
        on ltf_id.crz_id = ltf_res.crz_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.crz_id, crz_1, crz_2, crz_3, crz_4, crz_5, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, crz_1, crz_2, crz_3, crz_4, crz_5;

drop view if exists lotofacil.v_lotofacil_resultado_quarteto;
create view lotofacil.v_lotofacil_resultado_quarteto AS
  Select ltf_agrupado.qrt_id, qrt_1, qrt_2, qrt_3, qrt_4, qrt_5, qrt_6, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.qrt_id) as res_qt
    from lotofacil.lotofacil_id_quarteto_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_quarteto ltf_id
        on ltf_agrupado.qrt_id = ltf_id.qrt_id
  left join lotofacil.lotofacil_resultado_id ltf_res
        on ltf_id.qrt_id = ltf_res.qrt_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.qrt_id, qrt_1, qrt_2, qrt_3, qrt_4, qrt_5, qrt_6, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, qrt_1, qrt_2, qrt_3, qrt_4, qrt_5, qrt_6;

drop view if exists lotofacil.v_lotofacil_resultado_trio;
create view lotofacil.v_lotofacil_resultado_trio AS
  Select ltf_agrupado.trio_id, tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.trio_id) as res_qt
    from lotofacil.lotofacil_id_trio_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_trio ltf_id
        on ltf_agrupado.trio_id = ltf_id.trio_id
  left join lotofacil.lotofacil_resultado_id ltf_res
        on ltf_id.trio_id = ltf_res.trio_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.trio_id, tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, tr_1, tr_2, tr_3, tr_4, tr_5, tr_6, tr_7, tr_8;


/**
  Cria as views para as coluna b1, b4, b8, b12 e b15.
 */
drop view if exists lotofacil.v_lotofacil_resultado_b1;
create view lotofacil.v_lotofacil_resultado_b1 AS
  Select ltf_agrupado.b1_id, b1, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_id) as res_qt
    from lotofacil.lotofacil_id_b1_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1 ltf_id
      on ltf_agrupado.b1_id = ltf_id.b1_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_id = ltf_res.b1_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_id, b1, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;

drop view if exists lotofacil.v_lotofacil_resultado_b1_b15;
create view lotofacil.v_lotofacil_resultado_b1_b15 AS
  Select ltf_agrupado.b1_b15_id, b1, b15, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b15_id) as res_qt
    from lotofacil.lotofacil_id_b1_b15_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b15 ltf_id
      on ltf_agrupado.b1_b15_id = ltf_id.b1_b15_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b15_id = ltf_res.b1_b15_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b15_id, b1, b15, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;

drop view if exists lotofacil.v_lotofacil_resultado_b1_b8_b15;
create view lotofacil.v_lotofacil_resultado_b1_b8_b15 AS
  Select ltf_agrupado.b1_b8_b15_id, b1, b8, b15, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b8_b15_id) as res_qt
    from lotofacil.lotofacil_id_b1_b8_b15_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b8_b15 ltf_id
      on ltf_agrupado.b1_b8_b15_id = ltf_id.b1_b8_b15_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b8_b15_id = ltf_res.b1_b8_b15_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b8_b15_id, b1, b8, b15, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;

drop view if exists lotofacil.v_lotofacil_resultado_b1_b4_b8_b12_b15;
create view lotofacil.v_lotofacil_resultado_b1_b4_b8_b12_b15 AS
  Select ltf_agrupado.b1_b4_b8_b12_b15_id, b1, b4, b8, b12, b15, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.b1_b4_b8_b12_b15_id) as res_qt
    from lotofacil.lotofacil_id_b1_b4_b8_b12_b15_agrupado_por_qt ltf_agrupado
  left join lotofacil.lotofacil_id_b1_b4_b8_b12_b15 ltf_id
      on ltf_agrupado.b1_b4_b8_b12_b15_id = ltf_id.b1_b4_b8_b12_b15_id
  left join lotofacil.lotofacil_resultado_id ltf_res
      on ltf_id.b1_b4_b8_b12_b15_id = ltf_res.b1_b4_b8_b12_b15_id
  where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.b1_b4_b8_b12_b15_id, b1, b4, b8, b12, b15, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, b1;

/**
  Esta tabela lotofacil_resultado_novos_repetidos, terá um tabela separada.
 */

drop view if exists lotofacil.v_lotofacil_resultado_novos_repetidos;
create view lotofacil.v_lotofacil_resultado_novos_repetidos AS
  Select ltf_agrupado.novos_repetidos_id, novos, repetidos, ltf_agrupado.qt_vezes as ltf_qt, count(ltf_res.novos_repetidos_id) as res_qt
    from lotofacil.lotofacil_id_novos_repetidos_agrupado_por_qt ltf_agrupado
  left JOIN lotofacil.lotofacil_id_novos_repetidos ltf_id
        on ltf_agrupado.novos_repetidos_id = ltf_id.novos_repetidos_id
  left join lotofacil.lotofacil_resultado_novos_repetidos ltf_res
        on ltf_id.novos_repetidos_id = ltf_res.novos_repetidos_id
      where ltf_agrupado.ltf_qt = 15
  group by ltf_agrupado.novos_repetidos_id, novos, repetidos, ltf_agrupado.qt_vezes
  order by res_qt desc, ltf_qt desc, novos, repetidos;


/**
  Retorna todo os concursos.
 */
drop view if exists lotofacil.v_lotofacil_concursos;
create view lotofacil.v_lotofacil_concursos (concurso) as
  Select concurso from lotofacil.lotofacil_resultado_num
  GROUP BY concurso order by concurso;






drop view if exists lotofacil.v_lotofacil_resultado_grupo_1_bola;
create view lotofacil.v_lotofacil_resultado_grupo_1_bola as
  Select ltf_id.grp_id, bola1, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_1_bola ltf_id
  left join lotofacil.lotofacil_resultado_grupo_1_bola ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1
  order by qt_vezes desc;

drop view if exists lotofacil.v_lotofacil_resultado_grupo_2_bolas;
create view lotofacil.v_lotofacil_resultado_grupo_2_bolas as
  Select ltf_id.grp_id, bola1, bola2, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_2_bolas ltf_id
  left join lotofacil.lotofacil_resultado_grupo_2_bolas ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1, bola2
  order by qt_vezes desc;

drop view if exists lotofacil.v_lotofacil_resultado_grupo_3_bolas;
create view lotofacil.v_lotofacil_resultado_grupo_3_bolas as
  Select ltf_id.grp_id, bola1, bola2, bola3, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_3_bolas ltf_id
  left join lotofacil.lotofacil_resultado_grupo_3_bolas ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1, bola2, bola3
  order by qt_vezes desc;

drop view if exists lotofacil.v_lotofacil_resultado_grupo_4_bolas;
create view lotofacil.v_lotofacil_resultado_grupo_4_bolas as
  Select ltf_id.grp_id, bola1, bola2, bola3, bola4, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_4_bolas ltf_id
  left join lotofacil.lotofacil_resultado_grupo_4_bolas ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1, bola2, bola3, bola4
  order by qt_vezes desc;

drop view if exists lotofacil.v_lotofacil_resultado_grupo_5_bolas;
create view lotofacil.v_lotofacil_resultado_grupo_5_bolas as
  Select ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_5_bolas ltf_id
  left join lotofacil.lotofacil_resultado_grupo_5_bolas ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5
  order by qt_vezes desc;

drop view if exists lotofacil.v_lotofacil_resultado_grupo_6_bolas;
create view lotofacil.v_lotofacil_resultado_grupo_6_bolas as
  Select ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_6_bolas ltf_id
  left join lotofacil.lotofacil_resultado_grupo_6_bolas ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6
  order by qt_vezes desc;

drop view if exists lotofacil.v_lotofacil_resultado_grupo_7_bolas;
create view lotofacil.v_lotofacil_resultado_grupo_7_bolas as
  Select ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_7_bolas ltf_id
  left join lotofacil.lotofacil_resultado_grupo_7_bolas ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7
  order by qt_vezes desc;

drop view if exists lotofacil.v_lotofacil_resultado_grupo_8_bolas;
create view lotofacil.v_lotofacil_resultado_grupo_8_bolas as
  Select ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_8_bolas ltf_id
  left join lotofacil.lotofacil_resultado_grupo_8_bolas ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8
  order by qt_vezes desc;

drop view if exists lotofacil.v_lotofacil_resultado_grupo_9_bolas;
create view lotofacil.v_lotofacil_resultado_grupo_9_bolas as
  Select ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_9_bolas ltf_id
  left join lotofacil.lotofacil_resultado_grupo_9_bolas ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9
  order by qt_vezes desc;

drop view if exists lotofacil.v_lotofacil_resultado_grupo_10_bolas;
create view lotofacil.v_lotofacil_resultado_grupo_10_bolas as
  Select ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10, count(ltf_res.grp_id) as qt_vezes
  from lotofacil.lotofacil_id_grupo_10_bolas ltf_id
  left join lotofacil.lotofacil_resultado_grupo_10_bolas ltf_res
    on ltf_id.grp_id = ltf_res.grp_id
  group by ltf_id.grp_id, bola1, bola2, bola3, bola4, bola5, bola6, bola7, bola8, bola9, bola10
  order by qt_vezes desc;


/**
  Retorna somente ltf_id que ainda não foram sorteados na lotofacil.
 */
drop view if exists lotofacil.v_lotofacil_num_nao_sorteado;
create view lotofacil.v_lotofacil_num_nao_sorteado AS
Select ltf_id from lotofacil.lotofacil_num ltf_num
    where ltf_id not in (Select ltf_id from lotofacil.lotofacil_resultado_id);

