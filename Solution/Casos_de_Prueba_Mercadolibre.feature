Feature: Como cliente de Mercadolibre
quiero poder buscar en el modulo de busca de producto y usar el modulo de compras
para hacer uso de las funcionalidades de la plataforma.

 Background
 Given El cliente esta logueado en la pagina de inicio de Mercadolibre.com

#La nomenclatura Caso de Prueba (CP) sirve como apoyo para las evidencias

@Busquedadeproductopornombre @CP1
    Scenario Buscar un producto por nombre en especifico y logra encontrarlo
      Given el usuario esta en el modulo de busqueda
      When ingresa el nombre del producto en escifico
      And valida en el icono de buscar
      Then el usuario debería visualizar la listas del produtos
      And visualizar el producto en especifico

@Agregarproductoalcarrito @CP2
Scenario Agregar un producto al carrito de compras
    Given el usuario esta en la pagina del producto deseado
    When el usuario selecciona agregar el carrito
    Then el usuario deberia ver un mensaje de confirmacion

@Listadeproductos @CP3
Scenario Visualizar los elementos y valores del carrito de compras
    When el usuario selecciona el icono de carrito 
    Then deberia de visualizar todos sus articulos
    And visualizar tambien los valores parciales y totales

@Informacionparaenvios @CP4
Scenario Agregar informacion para envios de productos
    Given El cliente esta en la seccion de forma de entrega 
    And no tiene ninguna direccion preseleccionada 
    When el cliente selecciona algregar domicilio 
    And llena todos sus datos de manera correcta
    And valida su informacion
    Then deberia de poder continuar con el proceso de pago

@Seleccionmetododepago @CP5
Background
    Given El usuario ya hizo todo el proceso de seleccion de producto
    And ingreso de informacion de envio y facturacion
Scenario Selccionar el metodo de pago
    Given El usuario esta en la pagina de seleccion de metodo de pago
    When el selecciona un metodo de pago
    Then el usuario deberia poder continuar con la validacion del pago

