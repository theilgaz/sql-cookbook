-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you current schema name for desired table.
-- Sample: SchemaName

SELECT SCHEMA_NAME(schema_id) AS SchemaName FROM sys.tables where name='TABLE_NAME';