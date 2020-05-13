-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you first column for desired table.
-- Sample: Column1
select column_name from information_schema.columns where table_schema = 'SCHEMA_NAME' and table_name = 'TABLE_NAME' and ordinal_position < 2;