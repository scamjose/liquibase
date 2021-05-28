<!-- Generar una tabla en MySql Server -->
<changeSet author="Jose mracos" id="1">
	<createTable tableName="Curso">
		<column name="Id" type="INT">
			<constraints nullable="true" primaryKey="true" unique="false"/>
		</column>
		<column name="Nombre" type="VARCHAR(50)">
			<constraints nullable="true" primaryKey="false" unique="false"/>
		</column>
	</createTable>
</changeSet>

<!-- Generar una nueva tabla en MySql Server -->
<changeSet author="Jose mracos" id="2">
    <createTable tableName="Alumno">
		<column name="Id" type="INT">
			<constraints nullable="true" primaryKey="true" unique="false"/>
		</column>
		<column name="Nombre" type="VARCHAR(50)">
			<constraints nullable="true" primaryKey="false" unique="false"/>
		</column>
        <column name="Id_materia" type="INT">
			<constraints nullable="true" primaryKey="true" unique="false"/>
		</column>
	</createTable>
</changeSet>

<changeSet author="Jose Marcos" id="3">
	<addForeignKeyConstraint baseColumnNames="Id_materia" baseTableName="Alumno" constraintName="FK_alumno_materia" deferrable="false" initiallyDeferred="false" onDelete="NO ACTION" onUpdate="NO ACTION" referencedColumnNames="Id" referencedTableName="Materia"/>
</changeSet>

<!-- Generar Inserts -->
<changeSet author="Jose Marcos" id="4">
    <insert tableName="Alumno">
        <column name="Id" value="1"/>
        <column name="Nombre" value="Jose Marcos"/>
        <column name="Id_materia" value="22"/>
    </insert>
    <insert tableName="Curso">
        <column name="Id" value="22"/>
        <column name="Nombre" value="Liquibase"/>
    </insert>
</changeSet>

<!-- Generar Stored Procedure -->
<changeSet author="Jose Marcos" id="5">
	<createProcedure encoding="utf8" procedureName="getAlumnos">
		CREATE PROCEDURE getAlumnos
          AS
          BEGIN
            SELECT * FROM Alumno
          END;
    </createProcedure>
</changeSet>