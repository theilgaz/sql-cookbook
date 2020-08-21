-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: 
-- Sample: int XId

select ColumnType, ColumnName from ( select replace(col.name, ' ', '_') ColumnName, column_id ColumnId, case typ.name when 'int' then 'int' end ColumnType from sys.columns col join sys.types typ on col.system_type_id = typ.system_type_id AND col.user_type_id = typ.user_type_id where object_id = object_id('APP.City') and typ.name='int' and col.name like '%Id' and col.name <> 'Id') t order by ColumnId