Feature: Comprar productos

    Yo como usuario 
    Quiero comprar productos agregados al carrito
    Para usarlos

    Background: 
        Given que un usuario está en el módulo de compras

    @compra_exitosa
    Scenario: Comprar productos del carrito de compras con éxito
        Given el carrito de compras tiene productos
        When el usuario confirma la compra
        And todas las credenciales del usuario son válidas
        Then se realizaría el pago exitosamente
        And recibiría una notificación de compra exitosa por correo electrónico

    @excepcion
    Scenario: Intento de comprar con carrito de compras vacío
        Given el carrito de compras está vacío
        When el usuario intenta confirmar la compra
        Then debería ver un mensaje de error indicando que no hay productos en el carrito

    @excepcion
    Scenario: Intento de compra con saldo insuficiente en la tarjeta de crédito
        Given el carrito de compras tiene productos
        And la tarjeta de crédito asociada al usuario tiene saldo insuficiente
        When el usuario intenta confirmar la compra
        Then debería recibir un mensaje de error indicando "saldo insuficiente en la tarjeta de crédito"
