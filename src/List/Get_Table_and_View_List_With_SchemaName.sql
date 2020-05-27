-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you a list of tables/views and own schema names.
-- Sample: TableName, SchemaName
-- Notes: without sysdiagrams table

SELECT name, SCHEMA_NAME(schema_id) as schemaname FROM sys.objects WHERE name <> 'sysdiagrams' and type in ('U','V') order by name, type