-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you an update query for desired table.
-- Sample: update Schema.Table set Column1=@Column1, Column2=@Column3 WHERE ... (conditions are optional)

DECLARE @sql nvarchar(max); 
	SELECT @sql = 'UPDATE [SCHEMA_NAME.TABLE_NAME] SET ' +
    STUFF ((
        SELECT '', ',' + name + '=@'+name
        FROM syscolumns 
        WHERE colorder<>1 and id = OBJECT_ID('SCHEMA_NAME.TABLE_NAME') AND 
            name <> 'me' order by colorder 
        FOR XML PATH('')), 1, 1, '') +
    ' WHERE '; select @sql as UpdateQuery;