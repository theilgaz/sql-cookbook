-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you a list of tables/views.
-- Sample: TableName
-- Notes: object_id 949578421 --> sysdiagrams

SELECT name FROM sys.objects WHERE object_id <> '949578421' and type in ('U','V') order by name, type