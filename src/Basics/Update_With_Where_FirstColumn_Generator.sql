-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you an update query for desired table. Starts from second column to last column.
-- Sample: update Schema.Table set Column2=@Column3 WHERE Column1=@Column1
DECLARE @whereCondition nvarchar(max);
select @whereCondition = column_name + '=@'+column_name from information_schema.columns where table_schema = 'SCHEMA_NAME' and table_name = 'TABLE_NAME' and ordinal_position < 2;
DECLARE @sql nvarchar(max); 
	SELECT @sql = 'UPDATE [SCHEMA_NAME.TABLE_NAME] SET ' +
    STUFF ((
        SELECT '', ',' + name + '=@'+name
        FROM syscolumns 
        WHERE colorder<>1 and id = OBJECT_ID('SCHEMA_NAME.TABLE_NAME') AND 
            name <> 'me' order by colorder 
        FOR XML PATH('')), 1, 1, '') +
    ' WHERE '+@whereCondition; select @sql as UpdateQuery;