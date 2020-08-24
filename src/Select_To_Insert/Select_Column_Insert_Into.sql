	DECLARE @ACTION_ID int
	DECLARE @ROLE_ID int
    DECLARE @RECORD_EXISTS int
	SET @ROLE_ID = 1
    DECLARE curtblSAS CURSOR FOR
    select Id from SCHEMA_NAME.SECOND_TABLE
    order by Id
    OPEN curtblSAS
    FETCH NEXT FROM curtblSAS into @ACTION_ID
    WHILE @@FETCH_STATUS = 0 BEGIN 
        SET @RECORD_EXISTS=(select count(*) from SCHEMA_NAME.FIRST_TABLE where ActionId=@ACTION_ID and RoleId=@ROLE_ID)
        if @RECORD_EXISTS=0 begin
            INSERT INTO SCHEMA_NAME.FIRST_TABLE
                (RoleId, ActionId, CanCreate, CanRead, CanUpdate, CanDelete, CanDetail, CanPrint, CanDuplicate)
            VALUES  (@ROLE_ID,@ACTION_ID,1,1,1,1,1,1,1)
        end
    FETCH NEXT FROM curtblSAS into @ACTION_ID
    END
    CLOSE curtblSAS
    DEALLOCATE curtblSAS