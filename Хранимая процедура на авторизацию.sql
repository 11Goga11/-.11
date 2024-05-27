CREATE PROCEDURE AuthenticateUser
    @введенный_логин NVARCHAR(50),
    @введенный_пароль NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id_сотрудника INT;

    SELECT @id_сотрудника = ID_Сотрудника
    FROM dbo.Авторизация
    WHERE Логин = @введенный_логин AND Пароль = @введенный_пароль;

    IF @id_сотрудника IS NOT NULL
    BEGIN
        -- В случае успешной авторизации
        SELECT 'Авторизация прошла успешно' AS Результат, @id_сотрудника AS ID_Сотрудника;
    END
    ELSE
    BEGIN
        -- В случае неуспешной авторизации
        SELECT 'Неправильный логин или пароль' AS Результат, NULL AS ID_Сотрудника;
    END
END