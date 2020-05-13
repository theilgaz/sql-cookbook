-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you a list of tables and their sizes.
-- Sample: TableName, TableSize

select object_name(id) [Table Name], [Table Size] = convert (varchar, dpages * 8 / 1024) + 'MB'from sysindexes where indid in (0,1)order by dpages desc