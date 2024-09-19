CREATE PROCEDURE SP_cargarNuevoProducto
@NombreProducto nvarchar(200),
@NombreCategoria nvarchar(100),
@PrecioProducto real

AS

IF (SELECT COUNT(*) FROM Productos WHERE NombreProducto = @NombreProducto)=0
BEGIN
	DECLARE 
	@IdProducto int,
	@IdCategoria int,
	@IdDescuento int


	-- Asigna el descuento con ID 1 que corresponde a sin descuento, sino existe el ID, lo asigna
	SET @IdDescuento = 1
	IF (SELECT COUNT(*) FROM Descuentos WHERE IdDescuento = @IdDescuento) = 0
		BEGIN
			INSERT INTO Descuentos(NombreDescuento,ValorDescuento,FechaCreacion,UsuarioCreador)
			VALUES('sin descuento',0,GETDATE(), SUSER_NAME())
		END


	-- Verifica si la categoria existe, para obtener su ID, sino se crea y se extrae el ID asignado
	IF (SELECT COUNT(*) FROM Categorias WHERE NombreCategoria = @NombreCategoria)=0
		BEGIN
			INSERT INTO Categorias (NombreCategoria,FechaCreacion,UsuarioCreador)
			VALUES(@NombreCategoria,GETDATE(), SUSER_NAME())
		END

	SET @IdCategoria = (SELECT TOP 1 IdCategoria FROM Categorias WHERE NombreCategoria like @NombreCategoria)

	INSERT INTO Productos(
		IdCategoria,
		IdDescuento,
		DescuentoActivo,
		NombreProducto,
		PrecioProducto,
		FechaCreacion,
		UsuarioCreador
	)

	VALUES(
		@IdCategoria,
		@IdDescuento,
		0,
		@NombreProducto,
		@PrecioProducto,
		GETDATE(),
		SUSER_NAME()
	)
END

ELSE
	SELECT 'Producto actualmente en la base de datos'
