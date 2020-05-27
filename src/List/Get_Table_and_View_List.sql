-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you a list of tables/views.
-- Sample: TableName
-- Notes: without sysdiagrams

SELECT name FROM sys.objects WHERE name <> 'sysdiagrams' and type in ('U','V') order by name, type