-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-11-07 04:17:52.034

-- tables
-- Table: APODERADO
CREATE TABLE APODERADO (
    CODAPO char(4)  NOT NULL,
    DNIAPO char(8)  NOT NULL,
    NOMAPO varchar(80)  NOT NULL,
    APEAPO varchar(80)  NOT NULL,
    DIRAPO varchar(80)  NOT NULL,
    CELAPO char(9)  NOT NULL,
    EMAAPO varchar(80)  NOT NULL,
    CODUBI char(6)  NOT NULL,
    CONSTRAINT APODERADO_pk PRIMARY KEY (CODAPO)
);

-- Table: ENCARGADO_MATRICULA
CREATE TABLE ENCARGADO_MATRICULA (
    CODENCMAT char(4)  NOT NULL,
    DNIENCMAT char(8)  NOT NULL,
    CARENCMAT varchar(80)  NOT NULL,
    NOMENCMAT varchar(80)  NOT NULL,
    APEENCMAT varchar(80)  NOT NULL,
    DIRENCMAT varchar(80)  NOT NULL,
    CELENCMAT char(9)  NOT NULL,
    EMAENCMAT varchar(80)  NOT NULL,
    CODUBI char(6)  NOT NULL,
    CONSTRAINT ENCARGADO_MATRICULA_pk PRIMARY KEY (CODENCMAT)
);

-- Table: ESTUDIANTE
CREATE TABLE ESTUDIANTE (
    CODEST char(4)  NOT NULL,
    NOMEST varchar(60)  NOT NULL,
    APEEST varchar(60)  NOT NULL,
    ESCEST varchar(20)  NOT NULL,
    DIREST varchar(60)  NOT NULL,
    SEXEST char(1)  NOT NULL,
    CELEST char(9)  NOT NULL,
    EMAEST varchar(80)  NOT NULL,
    DNIEST char(8)  NOT NULL,
    CODUBI char(6)  NOT NULL,
    CONSTRAINT ESTUDIANTE_pk PRIMARY KEY (CODEST)
);

-- Table: MATRICULA
CREATE TABLE MATRICULA (
    IDMAT int  NOT NULL,
    FECMAT date  NOT NULL,
    COSMAT int  NOT NULL,
    NIVMAT char(1)  NOT NULL,
    GRAMAT varchar(30)  NOT NULL,
    CODENCMAT char(4)  NOT NULL,
    CODEST char(4)  NOT NULL,
    CODAPO char(4)  NOT NULL,
    CONSTRAINT MATRICULA_pk PRIMARY KEY (IDMAT)
);

-- Table: UBIGEO
CREATE TABLE UBIGEO (
    CODUBI char(6)  NOT NULL,
    DEPUBI varchar(60)  NOT NULL,
    PROUBI varchar(60)  NOT NULL,
    DISUBI varchar(60)  NOT NULL,
    CONSTRAINT UBIGEO_pk PRIMARY KEY (CODUBI)
);

-- foreign keys
-- Reference: APODERADO_UBIGEO (table: APODERADO)
ALTER TABLE APODERADO ADD CONSTRAINT APODERADO_UBIGEO
    FOREIGN KEY (CODUBI)
    REFERENCES UBIGEO (CODUBI)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: ENCARGADO_MATRICULA_UBIGEO (table: ENCARGADO_MATRICULA)
ALTER TABLE ENCARGADO_MATRICULA ADD CONSTRAINT ENCARGADO_MATRICULA_UBIGEO
    FOREIGN KEY (CODUBI)
    REFERENCES UBIGEO (CODUBI)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: ESTUDIANTE_UBIGEO (table: ESTUDIANTE)
ALTER TABLE ESTUDIANTE ADD CONSTRAINT ESTUDIANTE_UBIGEO
    FOREIGN KEY (CODUBI)
    REFERENCES UBIGEO (CODUBI)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: MATRICULA_APODERADO (table: MATRICULA)
ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_APODERADO
    FOREIGN KEY (CODAPO)
    REFERENCES APODERADO (CODAPO)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: MATRICULA_ENCARGADO_MATRICULA (table: MATRICULA)
ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_ENCARGADO_MATRICULA
    FOREIGN KEY (CODENCMAT)
    REFERENCES ENCARGADO_MATRICULA (CODENCMAT)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: MATRICULA_ESTUDIANTE (table: MATRICULA)
ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_ESTUDIANTE
    FOREIGN KEY (CODEST)
    REFERENCES ESTUDIANTE (CODEST)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

