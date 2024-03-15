Feature: Agregar productos al carrito de compras

    Yo como usuario 
    Quiero agregar productos al carrito de compras
    Para comprarlos

    Background: 
        Given Un usuario está en el módulo de un producto

    @camino_feliz
    Scenario Outline: Agregar productos aplicando descuento
        When el usuario agrega <cantidad> de productos al carrito
        Then se agregarían <cantidad> de productos correctamente 
        And se aplicaría un descuento del <descuento>% 

        Examples:
        | cantidad | descuento |
        | 3        | 0         |
        | 8        | 15        |

    @excepcion
    Scenario: Producto sin stock
        When el usuario intenta agregar un producto al carrito
        Then debería ver un mensaje de error indicando la falta de stock
