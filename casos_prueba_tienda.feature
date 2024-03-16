Feature: Seleccion de Producto en una Tienda en Línea
  Yo como usuario registrado en la tienda en linea
  quiero seleccionar mis productos
  para poder realizar una compra en la tienda

    Background:
      Given el usuario se encuentra logueado en la pagina de inicio de la tienda

    @Seleccion_de_un_producto
      Scenario: Se selecciona un producto de la tienda
          When Se ingresan los datos en la busqueda por producto
          Then Deberia de entregar una lista
          And Se deberia ver productos relacionados con la busqueda

      Scenario: Selecciona varios productos en el carrito
          When Se ingresan varios productos al carrito
          And se estable una cantidad mayor a 1
          Then Debería de guardar todos las productos con sus cantidades


Feature: Compra de Producto en una Tienda en Línea
  Yo como usuario registrado en la tienda
  quiero proceder a confirmar los productos en el carrito
  para poder pagar y finalizar la comprar

  Background:
    Given el usuario registrado se encuentra con los productos seleccionados en el carrito

  @Compra_de_un_producto
        Scenario: los productos ya estan seleccionados en el carrito
          When se confirma la realizacion de la compra de los productos seleccionados
          Then deberia requerir el ingreso de la informacion de envio
          And facturacion

        Scenario: la informacion de envio esta ingresada
          When se confirma la informacion de envio
          Then Deberia requerir el metodo de pago
          And los datos necesarios para el pago

        Scenario: se espera confirmacion de pago
          When Se confirma la factura compra
          Then Deberia mostrar un mensaje de confirmacion
          And enviar un correo electronico
