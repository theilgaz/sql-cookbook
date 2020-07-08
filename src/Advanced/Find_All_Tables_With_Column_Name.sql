-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you a list of tables which has specified column.
-- Sample: ColumnName
-- Notes: 

SELECT name FROM sysobjects WHERE type ='U' and id IN (SELECT id FROM syscolumns WHERE name like 'ColumnName');