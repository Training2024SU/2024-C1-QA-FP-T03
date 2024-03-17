Feature: Agregar productos al carrito y visualizar carrito

  Yo como usuario de la web tienda online
  quiero agregar productos a mi carro
  para poder visualizar mis productos en el carro y detalles como precio y cantidad

  Background:
    Given Un Usuario esta en el modulo de busca de productos

  @finalfeliz
  Scenario: agrega productos validos
    When  el usuario busca un producto deseado
    And se agrega al carrito la cantidad y se dirige al carrito
    Then  se visualizaria en el carrito el producto con la cantidad y precio total

  @finalnofeliz
  Scenario: agrega productos pasando la cantidad de stock
    When  el usuario busca un producto deseado
    And se agrega al carrito una cantidad superior al stock y se dirige al carrito
    Then  deberia visualizar un error indicando falta de stock del producto

