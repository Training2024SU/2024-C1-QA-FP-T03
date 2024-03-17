Feature: Agregar informacion de envio

  Yo como usuario de la web tienda online
  quiero agregar mi informacion de envio
  para recibir mis productos en mi domicilio

  @finalfeliz
  Scenario: agrega datos validos de direccion
    Given un usario nuevo esta en el modulo de modificacion de datos de envio para agregar datos
    When  el usuario llena los campos de informacion de envio y los confirma
    Then  se visualizaria un mensaje de datos agregados exitosamente


