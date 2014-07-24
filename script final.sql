---------------------------- NORMALIZACAO DO BANCO --------------------------

--Persona
ALTER TABLE persona.cargos 
	DROP CONSTRAINT IF EXISTS "FK_persona.cargos_estabelecimento";

ALTER TABLE persona.cargos	
	ADD CONSTRAINT "FK_persona.cargos_estabelecimento" FOREIGN KEY (estabelecimento)
		REFERENCES ns.empresas (empresa) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;

ALTER TABLE persona.pontoarquivostratamento 
	DROP CONSTRAINT IF EXISTS "FK_persona.funcionarios_funcionario";

ALTER TABLE persona.pontoarquivostratamento 	
	ADD CONSTRAINT "FK_persona.pontoarquivostratamento_funcionario" FOREIGN KEY (funcionario)
		REFERENCES persona.funcionarios (funcionario) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
		
ALTER TABLE persona.pontofuncionarios 
	DROP CONSTRAINT IF EXISTS "FK_persona.funcionarios_funcionario";

ALTER TABLE persona.pontofuncionarios 	
	ADD CONSTRAINT "FK_persona.pontofuncionarios_funcionario" FOREIGN KEY (funcionario)
		REFERENCES persona.funcionarios (funcionario) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;

ALTER TABLE persona.agentescausadorescatsfuncionarios 
	DROP CONSTRAINT IF EXISTS "FK_persona.agentescausadorescatsfuncionarios_agentecausadoracid";
	
ALTER TABLE persona.agentescausadorescatsfuncionarios
	ADD CONSTRAINT "FK_persona.agentesccatsfun_agtcactrabalho" FOREIGN KEY (agentecausadoracidentetrabalho)
		REFERENCES persona.agentescausadoresacidentestrabalho (codigo) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
		
ALTER TABLE persona.calculoscontribuintesindividuais 
	DROP CONSTRAINT IF EXISTS "FK_persona.calculoscontribuintesindividuais_contribuinteindivid";
	
ALTER TABLE persona.calculoscontribuintesindividuais
	ADD CONSTRAINT "FK_persona.calcontribuinte_contribuinte" FOREIGN KEY (contribuinteindividual)
		REFERENCES persona.contribuintesindividuais (contribuinteindividual) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE INITIALLY IMMEDIATE;
		
ALTER TABLE persona.calculoscontribuintesindividuais 
	DROP CONSTRAINT IF EXISTS "FK_persona.calculoscontribuintesindividuais_departamentomovimen";

ALTER TABLE persona.calculoscontribuintesindividuais
	ADD CONSTRAINT "FK_persona.calcontribuinte_depmovimento" FOREIGN KEY (departamentomovimento)
		REFERENCES persona.departamentos (departamento) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;		
		
ALTER TABLE persona.calculoscontribuintesindividuais 
	DROP CONSTRAINT IF EXISTS "FK_persona.calculoscontribuintesindividuais_dependentecontribui";

ALTER TABLE persona.calculoscontribuintesindividuais
  ADD CONSTRAINT "FK_persona.calcontribuinte_depcontribuinte" FOREIGN KEY (dependentecontribuinteindividual)
      REFERENCES persona.dependentescontribuintesindividuais (dependentecontribuinteindividual) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;

ALTER TABLE persona.calculoscontribuintesindividuais 
	DROP CONSTRAINT IF EXISTS "FK_persona.calculoscontribuintesindividuais_estabelecimentomovi";

ALTER TABLE persona.calculoscontribuintesindividuais
	ADD CONSTRAINT "FK_persona.calccontribuinte_estmovimento" FOREIGN KEY (estabelecimentomovimento)
		REFERENCES ns.empresas (empresa) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
		
ALTER TABLE persona.calculosestagiarios 
	DROP CONSTRAINT IF EXISTS "FK_persona.calculosestagiarios_departamentomovimen";

ALTER TABLE persona.calculosestagiarios
	ADD CONSTRAINT "FK_persona.calestagiario_depmovimento" FOREIGN KEY (departamentomovimento)
		REFERENCES persona.departamentos (departamento) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
		
ALTER TABLE persona.calculosestagiarios 
	DROP CONSTRAINT IF EXISTS "FK_persona.calculosestagiarios_estabelecimentomovi";

ALTER TABLE persona.calculosestagiarios
  ADD CONSTRAINT "FK_persona.calsestagiario_estmovimento" FOREIGN KEY (estabelecimentomovimento)
      REFERENCES ns.empresas (empresa) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
      
ALTER TABLE persona.dependentescontribuintesindividuais 
	DROP CONSTRAINT IF EXISTS "FK_persona.dependentescontribuinteindividuais_contribuinteindiv";

ALTER TABLE persona.dependentescontribuintesindividuais
  ADD CONSTRAINT "FK_persona.depcontribuinte_contribuinte" FOREIGN KEY (contribuinteindividual)
      REFERENCES persona.contribuintesindividuais (contribuinteindividual) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
      
ALTER TABLE persona.dependentescontribuintesindividuais 
	DROP CONSTRAINT IF EXISTS "FK_persona.dependentescontribuintesindividuais_dependentecontri";

ALTER TABLE persona.dependentescontribuintesindividuais
	ADD CONSTRAINT "FK_persona.depcontribuinte_depconpensao" FOREIGN KEY (dependentecontribuinteindividualpensao)
      REFERENCES persona.dependentescontribuintesindividuais (dependentecontribuinteindividual) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
          
ALTER TABLE persona.historicoscontribuintesindividuais 
	DROP CONSTRAINT IF EXISTS "FK_persona.historicoscontribuinteindividual_contribuinteindivid";

ALTER TABLE persona.historicoscontribuintesindividuais
	ADD CONSTRAINT "FK_persona.histcontribuinte_contribuinte" FOREIGN KEY (contribuinteindividual)
		REFERENCES persona.contribuintesindividuais (contribuinteindividual) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
		
ALTER TABLE persona.mudancascontribuintesindividuais 
	DROP CONSTRAINT IF EXISTS "FK_persona.mudancascontribuintesindividuais_contribuinteindivid";

ALTER TABLE persona.mudancascontribuintesindividuais
	ADD CONSTRAINT "FK_persona.mudcontribuinte_contribuinte" FOREIGN KEY (contribuinteindividual)
		REFERENCES persona.contribuintesindividuais (contribuinteindividual) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;

ALTER TABLE persona.outrosrecebimentoscontribuintesindividuais 
	DROP CONSTRAINT IF EXISTS "FK_persona.outrosrecebimentoscontribuintesindividuais_contribui";

ALTER TABLE persona.outrosrecebimentoscontribuintesindividuais
	ADD CONSTRAINT "FK_persona.ourcontribuinte_contribuinte" FOREIGN KEY (contribuinteindividual)
		REFERENCES persona.contribuintesindividuais (contribuinteindividual) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
		
ALTER TABLE persona.parcelasemprestimosfuncionarios 
	DROP CONSTRAINT IF EXISTS "FK_persona.parcelasemprestimosfuncionarios_emprestimofuncionari";

ALTER TABLE persona.parcelasemprestimosfuncionarios
	ADD CONSTRAINT "FK_persona.parcempfunc_empfuncionario" FOREIGN KEY (emprestimofuncionario)
		REFERENCES persona.emprestimosfuncionarios (emprestimofuncionario) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;

ALTER TABLE persona.partesatingidascatsfuncionarios 
	DROP CONSTRAINT IF EXISTS "FK_persona.partesatingidascatsfuncionarios_parteatingidaacident";

ALTER TABLE persona.partesatingidascatsfuncionarios
	ADD CONSTRAINT "FK_persona.partatgcatsfunc_paratgactrabalho" FOREIGN KEY (parteatingidaacidentetrabalho)
		REFERENCES persona.partesatingidasacidentestrabalho (codigo) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;

ALTER TABLE persona.planossaudedependentesfuncionarios 
	DROP CONSTRAINT IF EXISTS "FK_persona.planossaudedependentesfuncionarios_dependentefun";

ALTER TABLE persona.planossaudedependentesfuncionarios
	ADD CONSTRAINT "FK_persona.plasaudepfunc_dependentefunc" FOREIGN KEY (dependentefuncionario)
		REFERENCES persona.dependentesfuncionarios (dependentefuncionario) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;

ALTER TABLE persona.planossaudedependentesfuncionarios 
	DROP CONSTRAINT IF EXISTS "FK_persona.planossaudedependentesfuncionarios_planosaudefun";

ALTER TABLE persona.planossaudedependentesfuncionarios
	ADD CONSTRAINT "FK_persona.plasaudepfunc_plasaufunc" FOREIGN KEY (planosaudefuncionario)
		REFERENCES persona.planossaudefuncionarios (planosaudefuncionario) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;
		
-- Contabil		
ALTER TABLE contabil.loteslancamentosnumeros 
	DROP CONSTRAINT "FK_contabil.loteslancamentosabertos_empresa";

ALTER TABLE contabil.loteslancamentosnumeros 	
	ADD CONSTRAINT "FK_contabil.loteslancamentosnumeros_empresa" FOREIGN KEY (empresa)
		REFERENCES ns.empresas (empresa) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;		

ALTER TABLE contabil.loteslancamentosnumeros 
	DROP CONSTRAINT "FK_contabil.loteslancamentosabertos_lote";

ALTER TABLE contabil.loteslancamentosnumeros 	
	ADD CONSTRAINT "FK_contabil.loteslancamentosnumeros_lote" FOREIGN KEY (lote)
		REFERENCES contabil.lotes (lote) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;		
		
ALTER TABLE contabil.lancamentosnumeros 
	DROP CONSTRAINT "FK_contabil.lancamentosabertos_empresa";

ALTER TABLE contabil.lancamentosnumeros 	
	ADD CONSTRAINT "FK_contabil.lancamentosnumeros_empresa" FOREIGN KEY (empresa)
		REFERENCES ns.empresas (empresa) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;		
		
-- Scritta

-- ERP
ALTER TABLE erp.estoques
	DROP CONSTRAINT "FK_erp.empresas_empresa";

ALTER TABLE erp.estoques
	ADD CONSTRAINT "FK_erp.estoques_empresa" FOREIGN KEY (estabelecimento)
		REFERENCES ns.empresas (empresa) MATCH SIMPLE
		ON UPDATE NO ACTION ON DELETE NO ACTION DEFERRABLE;	
		
-- NS	

/* Esse script ja esta na pasta de atualizacao.
ALTER TABLE ns.analints
  RENAME CONSTRAINT fk_usuario TO "fk_ns.analints_usuario";

ALTER TABLE ns.analintsmemorytables
  RENAME CONSTRAINT fk_analint TO "fk_ns.analintsmemorytables_analint";

ALTER TABLE ns.analintsvisoes
  RENAME CONSTRAINT fk_usuario TO "fk_ns.analintsvisoes_usuarios";

ALTER TABLE ns.analintsvisoes
  RENAME CONSTRAINT fk_visao TO "fk_ns.analintsvisoes_analint";

ALTER TABLE ns.analintsvisoesfiltros
  RENAME CONSTRAINT fk_analisevisao TO "fk_ns.analintsvisoesfiltros_analisevisao";

ALTER TABLE ns.analintsvisoesfiltros
  RENAME CONSTRAINT fk_usuario TO "fk_ns.analintsvisoesfiltros_usuario";
*/

---------------------------- UNIFICACAO ------------------------------



---------------------------- SCRIPT DO GUID --------------------------

-- View FK

CREATE OR REPLACE VIEW ns.viewfk AS 

SELECT 
	tc.constraint_name as origem_constraint,
	tc.constraint_schema as origem_schema,
	tc.table_name as origem_table,
	kcu.column_name as origem_coluna,
	ccu.constraint_schema as destino_schema,
	ccu.table_name as destino_table,
	ccu.column_name as destino_field
FROM 
	information_schema.table_constraints tc

LEFT JOIN 
	information_schema.key_column_usage kcu ON tc.constraint_catalog = kcu.constraint_catalog AND 
	tc.constraint_schema = kcu.constraint_schema AND 
	tc.constraint_name = kcu.constraint_name

LEFT JOIN 
	information_schema.referential_constraints rc ON tc.constraint_catalog = rc.constraint_catalog AND 
	tc.constraint_schema = rc.constraint_schema AND 
	tc.constraint_name = rc.constraint_name

LEFT JOIN 
	information_schema.constraint_column_usage ccu ON rc.unique_constraint_catalog = ccu.constraint_catalog AND 
	rc.unique_constraint_schema = ccu.constraint_schema AND 
	rc.unique_constraint_name = ccu.constraint_name

WHERE 
	lower(tc.constraint_type) in ('foreign key')
ORDER BY
	tc.table_name;	

ALTER TABLE ns.viewfk OWNER TO group_nasajon;

GRANT ALL ON TABLE ns.viewfk TO group_nasajon;

-- View PK

CREATE OR REPLACE VIEW ns.viewpk AS 

SELECT 
	tc.constraint_name as origem_constraint,
	tc.constraint_schema as origem_schema,
	tc.table_name as origem_table,
	kcu.column_name as origem_coluna
FROM 
	information_schema.table_constraints tc

LEFT JOIN 
	information_schema.key_column_usage kcu ON tc.constraint_catalog = kcu.constraint_catalog AND 
	tc.constraint_schema = kcu.constraint_schema AND 
	tc.constraint_name = kcu.constraint_name

LEFT JOIN 
	information_schema.referential_constraints rc ON tc.constraint_catalog = rc.constraint_catalog AND 
	tc.constraint_schema = rc.constraint_schema AND 
	tc.constraint_name = rc.constraint_name

LEFT JOIN 
	information_schema.constraint_column_usage ccu ON rc.unique_constraint_catalog = ccu.constraint_catalog AND 
	rc.unique_constraint_schema = ccu.constraint_schema AND 
	rc.unique_constraint_name = ccu.constraint_name

WHERE 
	lower(tc.constraint_type) in ('primary key')
ORDER BY
	tc.table_name;	

ALTER TABLE ns.viewpk OWNER TO group_nasajon;

GRANT ALL ON TABLE ns.viewpk TO group_nasajon;


-- View Not Null

CREATE OR REPLACE VIEW ns.viewnotnull AS 

SELECT 
	table_schema as schema, table_name as table, column_name as column
FROM 
	INFORMATION_SCHEMA.COLUMNS
WHERE 
	column_name IS NOT NULL AND (table_schema in ('contabil', 'persona', 'scritta', 'ns', 'erp', 'public'))
ORDER BY
	table_schema, table_name, column_name ;

ALTER TABLE ns.viewnotnull OWNER TO group_nasajon;

GRANT ALL ON TABLE ns.viewnotnull TO group_nasajon;

DO
$$
DECLARE

	r record;
	numregistros smallint;
	numlevel smallint;

BEGIN

	CREATE TEMP TABLE tablesandconstraints AS
	SELECT
			table_schema,
			table_name,
			NULL AS "constraint_schema",
			NULL AS "constraint_table"
	FROM
			information_schema.tables
	WHERE
			table_schema IN ('ns','persona','contabil','scritta','erp')
	AND
			(table_schema,table_name) NOT IN (

								SELECT
											tc.table_schema,
											tc.table_name
								FROM 
											information_schema.table_constraints AS tc 
								INNER JOIN
											information_schema.key_column_usage AS kcu
								ON
											tc.constraint_name = kcu.constraint_name
								RIGHT JOIN
											information_schema.constraint_column_usage AS ccu
								ON
											ccu.constraint_name = tc.constraint_name
								WHERE
											constraint_type = 'FOREIGN KEY'
							)

	UNION

	SELECT
			tc.table_schema,
			tc.table_name,
			ccu.table_schema,
			ccu.table_name
	FROM
			information_schema.table_constraints AS tc 
	INNER JOIN
			information_schema.key_column_usage AS kcu
	ON
			tc.constraint_name = kcu.constraint_name
	RIGHT JOIN
			information_schema.constraint_column_usage AS ccu
	ON
			ccu.constraint_name = tc.constraint_name
	WHERE
			constraint_type = 'FOREIGN KEY'

	ORDER BY 1,2,3,4;

	CREATE TEMP TABLE ordertables
	(
		ordertable BIGSERIAL,
		level smallint NOT NULL,
		table_schema character varying NOT NULL,
		table_name character varying NOT NULL,
		CONSTRAINT "PK_ordertables" PRIMARY KEY (ordertable),
		CONSTRAINT "UK_ordertables" UNIQUE (table_schema,table_name)
	);

	numregistros = (SELECT COUNT(*) FROM tablesandconstraints);
	
	WHILE numregistros > 0 LOOP

		numlevel = COALESCE((SELECT MAX(level)+1 FROM ordertables),1);
	
		INSERT INTO ordertables (level,table_schema,table_name)
		SELECT numlevel,a.table_schema,a.table_name
		FROM (SELECT DISTINCT table_schema, table_name FROM tablesandconstraints WHERE constraint_table IS NULL) AS a
		LEFT JOIN (SELECT DISTINCT table_schema, table_name FROM tablesandconstraints WHERE constraint_table IS NOT NULL) AS b
		ON (a.table_schema = b.table_schema AND a.table_name = b.table_name)
		WHERE b.table_schema IS NULL;

		UPDATE tablesandconstraints SET constraint_schema=NULL, constraint_table=NULL WHERE (constraint_schema,constraint_table) IN (SELECT table_schema,table_name FROM ordertables);
	
		DELETE FROM tablesandconstraints WHERE (table_schema,table_name) IN (SELECT table_schema,table_name FROM ordertables);

		numlevel = (SELECT MAX(level)+1 FROM ordertables);
	
		INSERT INTO ordertables (level,table_schema,table_name)
		SELECT numlevel,a.table_schema,a.table_name
		FROM (SELECT DISTINCT table_schema, table_name FROM tablesandconstraints WHERE (table_schema = constraint_schema AND table_name = constraint_table)) AS a
		INNER JOIN (SELECT table_schema, table_name, count(constraint_table) As "quantidade" FROM tablesandconstraints GROUP BY table_schema, table_name) AS b
		ON (a.table_schema = b.table_schema AND a.table_name = b.table_name)
		WHERE b.quantidade = 1;

		UPDATE tablesandconstraints SET constraint_schema=NULL, constraint_table=NULL WHERE (constraint_schema,constraint_table) IN (SELECT table_schema,table_name FROM ordertables);
	
		DELETE FROM tablesandconstraints WHERE (table_schema,table_name) IN (SELECT table_schema,table_name FROM ordertables);
	
		numregistros = (SELECT COUNT(*) FROM tablesandconstraints);
		
	END LOOP;

END
$$;

-- Conversao de PK
CREATE OR REPLACE FUNCTION ns.conversao_novomodelo_bd_constraint() RETURNS void AS
$BODY$

DECLARE ENTIDADES RECORD;
DECLARE ENTIDADES_PK NS.VIEWPK%ROWTYPE;
DECLARE ENTIDADES_FK NS.VIEWFK%ROWTYPE;

DECLARE SQL TEXT;

BEGIN 	
	RAISE NOTICE 'Inicializando o script...';

	-- Cria a tabela temporaria
	CREATE TEMPORARY TABLE tempPK AS SELECT V.* FROM NS.VIEWPK AS V;
	CREATE TEMPORARY TABLE tempFK AS SELECT V.* FROM NS.VIEWFK AS V;	

	FOR ENTIDADES IN (SELECT V.* FROM ordertables AS V)
		LOOP
			IF POSITION ('vw' in ENTIDADES.TABLE_NAME) = 0 OR POSITION ('vw' in ENTIDADES.TABLE_NAME) > 1  THEN
				BEGIN
					RAISE NOTICE '% % % %', 'SCHEMA: ', ENTIDADES.TABLE_SCHEMA, 'TABELA: ', ENTIDADES.TABLE_NAME;			

					SELECT V.* INTO ENTIDADES_PK FROM tempPK AS V WHERE ORIGEM_SCHEMA = ENTIDADES.TABLE_SCHEMA AND  ORIGEM_TABLE = ENTIDADES.TABLE_NAME;
			
					SQL = 'ALTER TABLE ' || ENTIDADES_PK.origem_schema || '.' || ENTIDADES_PK.origem_table || ' RENAME COLUMN ' || ENTIDADES_PK.origem_coluna || ' TO ' || ENTIDADES_PK.origem_coluna || '_pk_old'  ||  ';';	
					RAISE NOTICE '%', SQL;

					SQL = 'ALTER TABLE ' || ENTIDADES_PK.origem_schema || '.' || ENTIDADES_PK.origem_table || ' ADD COLUMN ' || ENTIDADES_PK.origem_coluna || ' UUID NOT NULL DEFAULT uuid_generate_v4();';			
					RAISE NOTICE '%', SQL;
					
					IF EXISTS(SELECT V.origem_constraint FROM tempFK AS V WHERE V.DESTINO_SCHEMA = ENTIDADES.TABLE_SCHEMA AND V.DESTINO_TABLE = ENTIDADES.TABLE_NAME)
						THEN BEGIN
							RAISE NOTICE '% % %', 'FK: ', ENTIDADES.TABLE_SCHEMA, ENTIDADES.TABLE_NAME;
						END;
					END IF;	

					SQL = 'ALTER TABLE ' || ENTIDADES_PK.origem_schema || '.' || ENTIDADES_PK.origem_table || ' DROP CONSTRAINT "' || ENTIDADES_PK.origem_constraint || '";';
					RAISE NOTICE '%', SQL;
										
					SQL = 'ALTER TABLE ' || ENTIDADES_PK.origem_schema || '.' || ENTIDADES_PK.origem_table || ' ADD CONSTRAINT "' || ENTIDADES_PK.origem_constraint ||'" PRIMARY KEY (' || ENTIDADES_PK.origem_coluna || ');';
					RAISE NOTICE '%', SQL;		

					RAISE NOTICE '';			
					RAISE NOTICE '';								
						
				END;
			END IF;	
		END LOOP;
	RAISE NOTICE 'Script finalizado com sucesso';

	DROP TABLE tempPK;
	DROP TABLE tempFK;
END;
$BODY$

LANGUAGE plpgsql VOLATILE COST 100;
  
ALTER FUNCTION ns.conversao_novomodelo_bd_constraint() OWNER TO group_nasajon;

SELECT ns.conversao_novomodelo_bd_constraint();
DROP FUNCTION ns.conversao_novomodelo_bd_constraint();