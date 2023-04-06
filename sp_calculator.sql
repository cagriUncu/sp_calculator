Create PROCEDURE sp_calculator 
    @number1 INT, 
    @number2 INT, 
    @operation VARCHAR(1)
AS
BEGIN
    DECLARE @result FLOAT
    IF @operation = '+'
        SET @result = @number1 + @number2
    ELSE IF @operation = '-'
        SET @result = @number1 - @number2
    ELSE IF @operation = 'x'
        SET @result = @number1 * @number2
    ELSE IF @operation = '/'
        SET @result = @number1 / @number2
    ELSE
    BEGIN
        PRINT 'Invalid'
        RETURN
    END
    SELECT @result AS 'Result'
END
 
