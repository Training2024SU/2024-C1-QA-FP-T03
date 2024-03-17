Feature: Agregar informacion de facturacion y metodos de pago

  Yo como usuario de la web tienda online
  quiero agregar mi informacion de facturacion y metodo de pago
  para mis productos en la forma mas comoda y efectiva para el usuario

  @finalfeliz
  Scenario: agrega datos validos de facturacion y metodos de pago
    Given un usario nuevo esta en el modulo de facturacion y metodos de pago
    When  el usuario escoge el metodo de pago de preferemcia
    And el usuario ingresa los datos de tarjeta de credito o correo de paypal
    Then  se visualizaria una confirmacion de datos agregados exitosamente
    #en caso de tarjeta de credito se le descontaria una cantidad del dinero y se devolveria



