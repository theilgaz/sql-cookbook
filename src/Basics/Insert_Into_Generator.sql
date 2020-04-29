-- Author: Abdullah ILGAZ, abdullah@entegreyazilim.com.tr
-- Output: Gives you an insert query for desired table.
-- Sample: insert into Schema.Table (Column1, Column2) values (@Column1, @Column2);

    DECLARE @sql nvarchar(max); 
	SELECT @sql = 'INSERT INTO [SCHEMA_NAME.TABLE_NAME] (' +
    STUFF ((
        SELECT '', '[' + name + ']'
        FROM syscolumns 
        WHERE colorder<>1 and id = OBJECT_ID('SCHEMA_NAME.TABLE_NAME') AND 
            name <> 'me' order by colorder 
        FOR XML PATH('')), 1, 1, '') +
    ') VALUES (' +
    STUFF ((
        SELECT ', @' + name 
		FROM syscolumns
        WHERE colorder<>1 and id = OBJECT_ID('SCHEMA_NAME.TABLE_NAME') AND
            name <> 'me' order by colorder
        FOR XML PATH('')), 1, 1, '') + ')'; select @sql as InsertQuery;