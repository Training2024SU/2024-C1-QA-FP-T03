Feature: confirmar datos y terminar transaccion

  Yo como usuario de la web tienda online
  quiero poder ver mis datos de envios, facturacion y metodo de pago
  para certificar que todo esta bien con mi pedido y poder completar el pedido

  @finalfeliz
  Scenario: se confirman los datos para una transaccion exitosa
    Given el usuario ingresado esta en el modulo de confirmacion de metodo de pago
    And tiene producto/s en el carro, metodos de pago y de envio registrados
    When  el usuario confirma su metodo de pago y facturacion
    And el usuario confirma su direccion de envio
    And el usuario confirma la facturacion de su carrito
    #que las caracteristicas de los productos ordenados sean correctas
    Then  se veria un mensaje de compra orden exitosa junto a un correo de confirmacion al usuario


