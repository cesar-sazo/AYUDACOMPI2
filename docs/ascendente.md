# Gramatica 
```
<INICIO> ::= <INSTRUCCIONES\> 
<INSTRUCCIONES> ::= <INSTRUCCIONES> <INSTRUCCION> 
                | <INSTRUCCION> 
<INSTRUCCION> ::= <DML_COMANDOS> 
                | <DDL_COMANDOS> 
                | <DQL_COMANDOS> 
<DQL_COMANDOS> ::= SELECT <LISTA_CAMPOS> FROM <NOMBRES_TABLAS> <CUERPO> <UNIONS> 
                | SELECT TIMESTAMP CADENASIMPLE PUNTOCOMA
                | SELECT NOW PARIZQ PARDER PUNTOCOMA
                | CREATE TYPE MOOD AS ENUM PARIZQ <LISTAS_CS> PARDER PUNTOCOMA
                | SELECT EXTRACT PARIZQ <TIPO_TIEMPO> FROM TIMESTAMP CADENASIMPLE PARDER PUNTOCOMA
                | SELECT DATE_PART PARIZQ CADENASIMPLE COMA INTERVAL CADENASIMPLE PARDER PUNTOCOMA
                | SELECT <TIPO_CURRENT> PUNTOCOMA
                | SELECT <DISTINCTNT> <LISTA_CAMPOS> FROM <NOMBRES_TABLAS> <CUERPO> <UNIONS> 
                | SELECT <DISTINCTNT> <LISTA_CAMPOS> FROM <NOMBRES_TABLAS> <UNIONS> 
                | SELECT <LISTA_CAMPOS> FROM <NOMBRES_TABLAS> <UNIONS> 
<LISTA_CAMPOS> ::= <LISTA_CAMPOS> <LISTAA> 
                | <LISTAA> 
<LISTAA> ::= <NOMBRE_T> PUNTO <CAMPOS> <S> 
                | <NOMBRE_T> PUNTO <CAMPOS> 
                | <CAMPOS> <S> 
                | <CAMPOS> 
                | <EXPRESIONES_C> 
                | <SUBQUERYS> 
<CAMPOS> ::= ID
                | ASTERISCO
<NOMBRE_T> ::= ID
<ALIAS> ::= ID
<S> ::= COMA <LISTAA> 
                | AS <ALIAS> 
                | AS <ALIAS> COMA <LISTA_CAMPOS> 
                | <ALIAS> COMA <LISTA_CAMPOS> 
                | <ALIAS> 
<DISTINCTNT> ::= DISTINCT
<NOMBRES_TABLAS> ::= <NOMBRES_TABLAS> <TABLA> 
                | <TABLA> 
<TABLA> ::= <NOMBRE_T> 
                | <NOMBRE_T> <S1> 
                | <SUBQUERYS> 
<S1> ::= COMA <NOMBRES_TABLAS> 
                | AS <ALIAS> 
                | AS <ALIAS> COMA <TABLA> 
                | <ALIAS> COMA <TABLA> 
                | <ALIAS> 
<CUERPOS> ::= <CUERPOS> <CUERPO> 
                | <CUERPO> 
<CUERPO> ::= <MOREE> 
                | WHEN <CONDICIONES> <EXPRESIONNE> END
                | WHEN <CONDICIONES> <EXPRESIONNE> ELSE <EXPRESIONNE> END
                | END
                | END ID
<MOREE> ::= <INNERS> 
                | <GROUPS> 
                | <LIMITS> 
                | <CONDICIONS> 
<CONDICIONS> ::= <CONDICIONS> <CONDI> 
                | <CONDI> 
<CONDI> ::= WHERE <expresion> 
<CONDICIONES> ::= <CONDICIONES> <CONDICION> 
                | <CONDICION> 
<CONDICION> ::= <CONDICION_REL> <SIMBOLO_LOGICO> <CONDICION_REL> <OTRO_LOGICO> 
                | <CONDICION_REL> <SIMBOLO_LOGICO> <CONDICION_REL> 
                | <CONDICION_REL> 
<CONDICION_REL> ::= <EXPRESIONNE> <OPERADOR> <EXPRESIONNE> 
                | <SIMBOLO_NEG> <EXPRESIONNE> 
                | <EXPRESIONNE> 
<OTRO_LOGICO> ::= <SIMBOLO_LOGICO> <CONDICIONES> 
<EXPRESIONNE> ::= <NOMBRE_C> PUNTO <CAMPOSC> 
                | <expresion> 
                | <SUBQUERYS> 
<SIMBOLO_LOGICO> ::= AND
                | OR
<SIMBOLO_NEG> ::= NOT
<NOMBRE_C> ::= ID
<CAMPOSC> ::= ID
                | ENTERO
                | FLOTANTE
                | CADENASIMPLE
                | CADENADOBLE
<OPERADOR> ::= IGUAL
                | DIFERENTE
                | MAYOR
                | MENOR
                | MENORIGUAL
                | MAYORIGUAL
<INNERS> ::= <INNERS> <INNERR> 
                | <INNERR> 
<INNERR> ::= <TIPOS_INNER> JOIN <TABLA_REF> ON <CONDICIONES> 
                | JOIN <TABLA_REF> ON <CONDICIONES> 
                | <TIPOS_INNER> JOIN <TABLA_REF> USING PARIZQ <SUB_COLUMN> PARDER
                | JOIN <TABLA_REF> USING PARIZQ <SUB_COLUMN> PARDER
                | WHERE <expresion> 
<SUB_COLUMN> ::= JOIN <EXPRESIONNE> 
                | <EXPRESIONNE> 
<TIPOS_INNER> ::= INNER OUTER
                | INNER
                | LEFT OUTER
                | LEFT
                | RIGHT OUTER
                | RIGHT
                | FULL OUTER
                | FULL
<TABLA_REF> ::= ID
                | ID AS ID
                | ID ID
<GROUPS> ::= <GROUPS> <GROUPP> 
                | <GROUPP> 
<GROUPP> ::= GROUP BY <EXPRE_LIST> HAVING <expresion> 
                | GROUP BY <EXPRE_LIST> 
<EXPRE_LIST> ::= <EXPRE_LIST> <EXPRES> 
                | <EXPRES> 
<EXPRES> ::= <NOMBRE_T> PUNTO <CAMPOS> <S2> 
                | <NOMBRE_T> PUNTO <CAMPOS> 
                | <CAMPOS> <S2> 
                | <CAMPOS> 
                | <NOMBRE_T> PUNTO <CAMPOS> <S2> <STATE> 
                | <NOMBRE_T> PUNTO <CAMPOS> <STATE> 
                | <CAMPOS> <S2> <STATE> 
                | <CAMPOS> <STATE> 
<S2> ::= COMA <EXPRES> 
                | AS <ALIAS> 
                | AS <ALIAS> COMA <EXPRES> 
                | <ALIAS> 
                | <ALIAS> COMA <EXPRES> 
<STATE> ::= ASC
                | ASC NULLS FIRST
                | ASC NULLS LAST
                | DESC
                | DESC NULLS FIRST
                | DESC NULLS LAST
<LIMITS> ::= <LIMITS> <LIMITT> 
                | <LIMITT> 
<LIMITT> ::= LIMIT <EXPRE_NUM> 
                | OFFSET <EXPRE_NUM> 
<EXPRE_NUM> ::= ENTERO
                | ALL
<SUBQUERYS> ::= <SUBQUERYS> <QUERY> 
                | <QUERY> 
<QUERY> ::= <ATE_QUE> PARIZQ <QUE> PARDER
                | <ATE_QUE> PARIZQ <QUE> PARDER <AS_NO> 
                | PARIZQ <QUE> PARDER
                | PARIZQ <QUE> PARDER <AS_NO> 
<AS_NO> ::= COMA <QUERY> 
                | AS <NO_N> 
                | AS <NO_N> COMA <QUERY> 
                | <NO_N> 
                | <NO_N> COMA <QUERY> 
<NO_N> ::= ID
<ATE_QUE> ::= EXISTS
                | <EXPRESIONNE> <OPCIONALESS> 
                | <EXPRESIONNE> <OPERADOR> <OPCIONALESS2> 
                | ID
<OPCIONALESS> ::= IN
                | NOT IN
<OPCIONALESS2> ::= ANY
                | ALL
                | SOME
<QUE> ::= <QUE_SUBS> 
<QUE_SUBS> ::= SELECT <LISTA_CAMPOS> FROM <NOMBRES_TABLAS> <CUERPO> 
                | SELECT <LISTA_CAMPOS> FROM <NOMBRES_TABLAS> 
                | SELECT <DISTINCTNT> <LISTA_CAMPOS> FROM <NOMBRES_TABLAS> <CUERPO> 
                | SELECT <DISTINCTNT> <LISTA_CAMPOS> FROM <NOMBRES_TABLAS> 
<UNIONS> ::= <UNIONS> <UNIONN> 
                | <UNIONN> 
<UNIONN> ::= <COMPORTAMIENTO> ALL <DQL_COMANDOS> 
                | <COMPORTAMIENTO> <DQL_COMANDOS> 
                | PUNTOCOMA
<COMPORTAMIENTO> ::= UNION
                | INTERSECT
                | EXCEPT
<EXPRESIONES_C> ::= CASE <WHEN_LIST> <CUERPO>
                | GREATEST PARIZQ <EXPRESIONNE> PARDER
                | LEAST PARIZQ <EXPRESIONNE> PARDER

<WHEN_LIST> ::= <WHEN_LIST> <WHEN_UNI> 
                | <WHEN_UNI> 
<WHEN_UNI> ::= WHEN <CONDICIONES> THEN <EXPRESIONNE> 
                | WHEN <CONDICIONES> <EXPRESIONNE> THEN <EXPRESIONNE> 
                | WHEN <CONDICIONES> <EXPRESIONNE> ELSE <EXPRESIONNE> THEN <EXPRESIONNE> 

<DML_COMANDOS> ::= CREATE TABLE ID PARIZQ <CUERPO>_CREATE_TABLE PARDER PUNTOCOMA
                | CREATE TABLE ID PARIZQ <CUERPO>_CREATE_TABLE PARDER <INHER> PUNTOCOMA
                | INSERT INTO <LISTA_DE_IDS> <DATOS> PUNTOCOMA
                | INSERT INTO <NOMBRES_TABLAS> DEFAULT VALUES PUNTOCOMA
                | UPDATE <LISTA_DE_IDS> SET <CAMPOSN> WHERE <expresion> PUNTOCOMA
                | UPDATE <LISTA_DE_IDS> SET <CAMPOSN> PUNTOCOMA
                | DELETE FROM <LISTA_DE_IDS> WHERE <expresion> PUNTOCOMA
                | DELETE FROM <LISTA_DE_IDS> PUNTOCOMA
                | DROP TABLE <LISTA_DE_IDS> PUNTOCOMA
                | ALTER TABLE ID ADD COLUMN <LISTA_ALTER_EM> PUNTOCOMA
                | ALTER TABLE ID DROP COLUMN <LISTA_DE_IDS> PUNTOCOMA
                | ALTER TABLE ID RENAME COLUMN ID TO ID PUNTOCOMA
                | ALTER TABLE ID DROP CONSTRAINT ID PUNTOCOMA
                | ALTER TABLE ID ALTER COLUMN ID SET NOT NULL PUNTOCOMA
                | ALTER TABLE ID ADD FOREIGN KEY PARIZQ ID PARDER REFERENCES ID PUNTOCOMA
                | ALTER TABLE ID ADD CONSTRAINT ID UNIQUE PARIZQ ID PARDER PUNTOCOMA
                | ALTER COLUMN ID TYPE <TIPO_CAMPO> COMA
                | ALTER COLUMN ID TYPE <TIPO_CAMPO> PUNTOCOMA

<INHER> ::= INHERITS PARIZQ ID PARDER
<CUERPO_CREATE_TABLE ::= <LISTA_DE_COLUMNAS> 
<LISTA_DE_COLUMNAS> ::= <LISTA_DE_COLUMNAS> <LISTA2> 
                | <LISTA2> 
<LISTA2> ::= <NOMBRE_T> <TIPO_CAMPO> <VALIDACIONES_CREATE_TABLE> COMA
                | <NOMBRE_T> <TIPO_CAMPO> <VALIDACIONES_CREATE_TABLE> 
                | CONSTRAINT ID UNIQUE
                | CONSTRAINT ID UNIQUE COMA
                | CONSTRAINT ID CHECK PARIZQ <VALORES> PARDER
                | CONSTRAINT ID CHECK PARIZQ <VALORES> PARDER COMA
                | UNIQUE PARIZQ <LISTA_DE_IDS> PARDER COMA
                | UNIQUE PARIZQ <LISTA_DE_IDS> PARDER
                | CONSTRAINT ID PRIMARY KEY PARIZQ <LISTA_DE_IDS> PARDER
                | CONSTRAINT ID PRIMARY KEY PARIZQ <LISTA_DE_IDS> PARDER COMA
                | PRIMARY KEY PARIZQ <LISTA_DE_IDS> PARDER COMA
                | FOREIGN KEY PARIZQ <LISTA_DE_IDS> PARDER REFERENCES ID PARIZQ <LISTA_DE_IDS> PARDER COMA
                | PRIMARY KEY PARIZQ <LISTA_DE_IDS> PARDER
                | FOREIGN KEY PARIZQ <LISTA_DE_IDS> PARDER REFERENCES ID PARIZQ <LISTA_DE_IDS> PARDER
<LISTA_DE_IDS> ::= <LISTA_DE_IDS> <LISTA_ID_> 
                | <LISTA_ID_> 
<LISTA_ID_> ::= ID COMA
                | ID
<TIPO_CAMPO> ::= SMALLINT
                | INTEGER
                | INT
                | BIGINT
                | DECIMAL
                | REAL
                | MONEY
                | FLOAT
                | TEXT
                | BOOLEAN
                | DOUBLE PRECISION
                | CHARACTER VARYING PARIZQ <expresion_aritmetica> PARDER
                | VARCHAR PARIZQ <expresion_aritmetica> PARDER
                | CHARACTER PARIZQ <expresion_aritmetica> PARDER
                | CHAR PARIZQ <expresion_aritmetica> PARDER
<VALIDACIONES_CREATE_TABLE> ::= <LISTA3> 
<LISTA3> ::= <LISTA3> <VALIDACION_CAMPO_CREATE> 
                | <VALIDACION_CAMPO_CREATE> 
                | <VALIDACION_CAMPO_CREATE_VACIO> 
<VALIDACION_CAMPO_CREATE> ::= NOT NULL
                | PRIMARY KEY
                | DEFAULT CADENASIMPLE
                | DEFAULT CADENADOBLE
                | DEFAULT DECIMAL
                | DEFAULT ENTERO
                | DEFAULT ID
                | NULL
                | CONSTRAINT ID UNIQUE
                | CONSTRAINT ID CHECK PARIZQ <CONDICIONES> PARDER

<VALIDACION_CAMPO_CREATE_VACIO> ::= ?? 


<DATOS> ::= PARIZQ <COLUMNAS> PARDER VALUES PARIZQ <VALORES> PARDER
                | VALUES PARIZQ <VALORES> PARDER
<COLUMNAS> ::= <COLUMNAS> <COLUMNA> 
                | <COLUMNA> 
<COLUMNA> ::= ID COMA
                | ID
<VALORES> ::= <VALORES> <VALOR> 
                | <VALOR> 
<VALOR> ::= <expresion> COMA
                | <expresion> 


<CAMPOSN> ::= <CAMPOSN> <CAMPO> 
                | <CAMPO> 
<CAMPO> ::= <expresion> 
                | <expresion> COMA
                | <LISTA_DE_IDS> PUNTO ID IGUAL <expresion> 
                | <LISTA_DE_IDS> PUNTO ID IGUAL <expresion> COMA

<LISTA_ALTER_EM> ::= <LISTA_ALTER_EM> <LISTA_ALTER_EM_> 
                | <LISTA_ALTER_EM_> 
<LISTA_ALTER_EM_> ::= ID <TIPO_CAMPO> COMA
                | ID <TIPO_CAMPO> 

<DDL_COMANDOS> ::= <CREATE_DATABASE> 
                | <SHOW_DATABASES> 
                | <ALTER_DATABASE> 
                | <DROP_DATABASE> 
<CREATE_DATABASE> ::= CREATE <REPLACE_OP> DATABASE <IF_NOT_EXISTIS> ID <OWNER_DATABASE> <MODE_DATABASE> PUNTOCOMA
<REPLACE_OP> ::= OR REPLACE
                | ?? 
<IF_NOT_EXISTIS> ::= IF NOT EXISTS
                | ?? 
<OWNER_DATABASE> ::= OWNER IGUAL ID
                | ?? 
<MODE_DATABASE> ::= MODE IGUAL ENTERO
                | ?? 
<SHOW_DATABASES> ::= SHOW DATABASES <SHOW_DATABASES_LIKE> PUNTOCOMA
<SHOW_DATABASES_LIKE> ::= LIKE CADENADOBLE
                | ?? 

<ALTER_DATABASE> ::= ALTER DATABASE ID <ALTER_DATABASE_OP> PUNTOCOMA

<ALTER_DATABASE_OP> ::= RENAME TO ID
                | OWNER TO <ALTER_TABLE_OP_OW> 
                | ?? 

<ALTER_TABLE_OP_OW> ::= ID
                | CURRENT_USER
                | SESSION_USER

<DROP_DATABASE> ::= DROP DATABASE <IF_EXISTS_DATABASE> ID PUNTOCOMA
<IF_EXISTS_DATABASE> ::= IF EXISTS
                | ?? 

<TIPO_TIEMPO> ::= YEAR
                | HOUR
                | MINUTE
                | SECOND

<TIPO_CURRENT> ::= CURRENT_DATE
                | CURRENT_TIME

<LISTAS_CS> ::= <LISTA_CS> 
<LISTA_CS> ::= CADENASIMPLE
                | CADENASIMPLE <CS> 
<CS> ::= COMA <LISTA_CS> 

<expresion> ::= <expresion_aritmetica> 

                | <expresion_logica> 
                | <expresion_unaria> 

<expresion_relacional> ::= <expresion_aritmetica> IGUAL <expresion_aritmetica> 
                | <expresion_aritmetica> DIFERENTE <expresion_aritmetica> 
                | <expresion_aritmetica> MAYORIGUAL <expresion_aritmetica> 
                | <expresion_aritmetica> MENORIGUAL <expresion_aritmetica> 
                | <expresion_aritmetica> MAYOR <expresion_aritmetica> 
                | <expresion_aritmetica> MENOR <expresion_aritmetica> 
                | PARIZQ <expresion_relacional> PARDER

<expresion_logica> ::= <expresion_logica> AND <expresion_logica> 
                | <expresion_logica> OR <expresion_logica> 
                | NOT <expresion_logica> 
                | PARIZQ <expresion_logica> PARDER
                | <expresion_relacional> 
                | EXISTS <QUE> 
                | <expresion_aritmetica> IN <QUE> 
                | <expresion_aritmetica> NOT IN <QUE> 
                | <expresion_aritmetica> NOT BETWEEN <expresion_aritmetica> AND <expresion_aritmetica> 
                | <expresion_aritmetica> IS NOT DISTINCT FROM <expresion_aritmetica> 
                | <expresion_aritmetica> BETWEEN <expresion_aritmetica> AND <expresion_aritmetica> 
                | <expresion_aritmetica> IS DISTINCT FROM <expresion_aritmetica> 
                | <expresion_aritmetica> IS NOT NULL
                | <expresion_aritmetica> IS NOT TRUE
                | <expresion_aritmetica> IS NOT FALSE
                | <expresion_aritmetica> IS NOT UNKNOWN
                | <expresion_aritmetica> IS NULL
                | <expresion_aritmetica> IS TRUE
                | <expresion_aritmetica> IS FALSE
                | <expresion_aritmetica> IS UNKNOWN

<expresion_aritmetica> ::= <expresion_aritmetica> MAS <expresion_aritmetica> 
                | <expresion_aritmetica> MENOS <expresion_aritmetica> 
                | <expresion_aritmetica> ASTERISCO <expresion_aritmetica> 
                | <expresion_aritmetica> DIVISION <expresion_aritmetica> 
                | <expresion_aritmetica> PORCENTAJE <expresion_aritmetica> 

                | MENOS <expresion_aritmetica> 
                | ID
                | ENTERO
                | FLOTANTE
                | DEFAULT
                | CADENASIMPLE
                | CADENADOBLE
                | CADENABINARIA
                | TRUE
                | FALSE
                | PARIZQ <expresion_aritmetica> PARDER
                | ABS PARIZQ <expresion_aritmetica> PARDER
                | CBRT PARIZQ <expresion_aritmetica> PARDER
                | CEIL PARIZQ <expresion_aritmetica> PARDER
                | CEILING PARIZQ <expresion_aritmetica> PARDER
                | DEGREES PARIZQ <expresion_aritmetica> PARDER
                | DIV PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | EXP PARIZQ <expresion_aritmetica> PARDER
                | FACTORIAL PARIZQ <expresion_aritmetica> PARDER
                | FLOOR PARIZQ <expresion_aritmetica> PARDER
                | GCD PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | LN PARIZQ <expresion_aritmetica> PARDER
                | LOG PARIZQ <expresion_aritmetica> PARDER
                | MOD PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | PI PARIZQ PARDER
                | POWER PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | RADIANS PARIZQ <expresion_aritmetica> PARDER
                | ROUND PARIZQ <expresion_aritmetica> PARDER
                | SIGN PARIZQ <expresion_aritmetica> PARDER
                | SQRT PARIZQ <expresion_aritmetica> PARDER
                | WIDTH_BUCKET PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> COMA <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | TRUNC PARIZQ <expresion_aritmetica> PARDER
                | RANDOM PARIZQ PARDER
                | ACOS PARIZQ <expresion_aritmetica> PARDER
                | ACOSD PARIZQ <expresion_aritmetica> PARDER
                | ASIN PARIZQ <expresion_aritmetica> PARDER
                | ASIND PARIZQ <expresion_aritmetica> PARDER
                | ATAN PARIZQ <expresion_aritmetica> PARDER
                | ATAND PARIZQ <expresion_aritmetica> PARDER
                | ATAN2 PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | ATAN2D PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | COS PARIZQ <expresion_aritmetica> PARDER
                | COSD PARIZQ <expresion_aritmetica> PARDER
                | COT PARIZQ <expresion_aritmetica> PARDER
                | COTD PARIZQ <expresion_aritmetica> PARDER
                | SIN PARIZQ <expresion_aritmetica> PARDER
                | SIND PARIZQ <expresion_aritmetica> PARDER
                | TAN PARIZQ <expresion_aritmetica> PARDER
                | TAND PARIZQ <expresion_aritmetica> PARDER
                | SINH PARIZQ <expresion_aritmetica> PARDER
                | COSH PARIZQ <expresion_aritmetica> PARDER
                | TANH PARIZQ <expresion_aritmetica> PARDER
                | ASINH PARIZQ <expresion_aritmetica> PARDER
                | ACOSH PARIZQ <expresion_aritmetica> PARDER
                | ATANH PARIZQ <expresion_aritmetica> PARDER
                | LENGTH PARIZQ <expresion_aritmetica> PARDER
                | SUBSTRING PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | TRIM PARIZQ <expresion_aritmetica> PARDER
                | MD5 PARIZQ <expresion_aritmetica> PARDER
                | SHA256 PARIZQ <expresion_aritmetica> PARDER
                | SUBSTR PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | GET_BYTE PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | SET_BYTE PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | CONVERT PARIZQ <expresion_aritmetica> AS <TIPO_CAMPO> PARDER
                | ENCODE PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | DECODE PARIZQ <expresion_aritmetica> COMA <expresion_aritmetica> PARDER
                | <expresion_aritmetica> DOBLEPLECA <expresion_aritmetica> 
                | <expresion_aritmetica> AMPERSAND <expresion_aritmetica> 
                | <expresion_aritmetica> PLECA <expresion_aritmetica> 
                | <expresion_aritmetica> NUMERAL <expresion_aritmetica> 
                | <expresion_aritmetica> LEFTSHIFT <expresion_aritmetica> 
                | <expresion_aritmetica> RIGHTSHIFT <expresion_aritmetica> 
                | VIRGULILLA <expresion_aritmetica>
```