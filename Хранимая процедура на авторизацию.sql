CREATE PROCEDURE AuthenticateUser
    @���������_����� NVARCHAR(50),
    @���������_������ NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @id_���������� INT;

    SELECT @id_���������� = ID_����������
    FROM dbo.�����������
    WHERE ����� = @���������_����� AND ������ = @���������_������;

    IF @id_���������� IS NOT NULL
    BEGIN
        -- � ������ �������� �����������
        SELECT '����������� ������ �������' AS ���������, @id_���������� AS ID_����������;
    END
    ELSE
    BEGIN
        -- � ������ ���������� �����������
        SELECT '������������ ����� ��� ������' AS ���������, NULL AS ID_����������;
    END
END