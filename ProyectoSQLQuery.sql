USE proyecto;

CREATE TABLE patients(
	id INT,
    city varchar(100),
    masl INT,
    sex varchar(50),
    age INT,
    systolic_bp INT,
    diastolic_bp INT,
    weigth INT,
    height INT,
    body_mass_index INT,
    diabetes_mellitus varchar(10),
    dm_treatment varchar(10),
    cv_diseases varchar(10), # Cardiovascular diseases
    cd_treatment varchar(10), # Chemical Dependency Treatment
    smoking varchar(10),
    smoking_years INT,
    hypertension_dx varchar(10),
    hypertension_years INT,
    hypertension_treatment varchar(10),
    physical_activity varchar(10),
    msnm varchar(50), # Metros sobre el nivel del mar
    region varchar(100),
    sist_old varchar(100),
    diast_old varchar(100),
    sist_new varchar(100),
    diast_new varchar(100),
    treatment varchar(10),
    HTA_new varchar(10), # Personas con nuevo diagnóstico
    BMI_cat varchar(50) # Categoría del índice de masa corporal
);

LOAD DATA
INFILE 'H:/Documentos/Escuela casa/Bedu/Análisis de datos/Proyecto/Change criteria hypertension peru.csv'
INTO TABLE patients
FIELDS TERMINATED BY ',' LINES TERMINATED BY 'n';

SHOW VARIABLES LIKE "secure_file_priv";

describe patients;



