@SHOPPING_CART
Feature: SHOPPING_CART

        Background: Pasos comunes
                Given Abro la pagina "icbc"
                And Leo los datos de "icbc"

        Scenario: TC_SHOPPING_CART_001_Validar sección Mi carrito según maquetación.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Verificar que el elemento "ProductosEnCarrito" del carrito contenga el producto "ProductoAutomation" yendo a buscar la config

        Scenario: TC_SHOPPING_CART_008_Validar que el usuario invitado al loguearse mantenga los artículos en el carrito.
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "2"
                And Hago click en "Comprar"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                Then Verifico que el campo "Carrito" contenga el texto "2"
                And Hago click en "Carrito"
                And Hago click en "BtnComprarCarrito"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "Carrito" contenga el texto "2"

        Scenario: TC_SHOPPING_CART_009_Validar que al ingresar al carrito sin artículos añadidos aparezca un mensaje de alerta.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                Then Verifico que el campo "MensajeAlertaBusqueda" contenga el texto "Su carrito está vacío."

        Scenario: TC_SHOPPING_CART_015_Validar que se pueda agregar un artículo aleatorio al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Verificar que el elemento "ProductosEnCarrito" del carrito contenga el producto "ProductoAutomation" yendo a buscar la config

        Scenario: TC_SHOPPING_CART_016_Validar que el ícono de carrito (núm) se actualice al agregar un artículo aleatorio.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "1"

        Scenario: TC_SHOPPING_CART_018_Validar que al presionar el botón de carrito se despliegue una lista con el artículo añadido.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                When Verificar que el elemento "ProductosCarritoDesplegado" del carrito contenga el producto "ProductoAutomation" yendo a buscar la config

        Scenario: TC_SHOPPING_CART_019_1_Validar que el importe subtotal de la lista se corresponda con el del artículo añadido al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Obtengo el texto del elemento "PrecioProducto" y lo guardo en la variable "PrecioProductoCompra"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                Then Verifico que el elemento "PrecioPrimerProductoEnCarritoDesplegado" contiene el texto alojado en la variable "PrecioProductoCompra"

        Scenario: TC_SHOPPING_CART_019_2_Validar que la foto de producto de la lista se corresponda con la del artículo añadido al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Obtengo el atributo "Titulo" del elemento "ImagenProducto" y lo guardo en la variable "ProductoImagen"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                Then Verifico que el elemento "ImagenProductoEnCarritoDesplegado" contiene el atributo "Titulo" alojado en la variable "ProductoImagen"

        Scenario: TC_SHOPPING_CART_019_4_Validar que el importe total de la lista se corresponda con el del artículo añadido al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "AceptoCondiciones"
                And Hago click en "IrACaja"
                When Obtengo el texto del elemento "PrecioTotalCompra" y lo guardo en la variable "MontoTotalCompra"
                And Hago click en "Carrito"
                Then Verifico que el elemento "PrecioTotalProductoEnCarritoDesplegado" contiene el texto alojado en la variable "MontoTotalCompra"

        Scenario: TC_SHOPPING_CART_019_5_Validar que se pueda seleccionar el artículo de la lista.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                And Hago click en "ProductosCarritoDesplegado"
                Then Verifico que el campo "Breadcumb" contenga el texto "TituloProductoAutomation" yendo a buscar la config

        Scenario: TC_SHOPPING_CART_019_6_Validar que al presionar el botón Comprar de la lista se pueda ingresar al checkout.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                And Hago click en "BtnComprarCarrito"
                Then Verifico que el elemento "PasosDeCompra" este habilitado

        Scenario: TC_SHOPPING_CART_020_Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde lista desplegable.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                And Hago click en "EliminarProductoCarritoDesplegado"
                Then Verifico que el campo "MensajeAlertaBusqueda" contenga el texto "Su carrito está vacío."

        Scenario: TC_SHOPPING_CART_022_Validar que el ícono de carrito (núm) se actualice al eliminar un artículo aleatorio.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                And Hago click en "EliminarProductoCarritoDesplegado"
                Then Verifico que el campo "Carrito" contenga el texto "0"

        Scenario: TC_SHOPPING_CART_023_01_Validar que el importe subtotal de la página se corresponda con el del artículo añadido al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "AceptoCondiciones"
                And Hago click en "IrACaja"
                When Obtengo el texto del elemento "SubTotalProductoCompra" y lo guardo en la variable "MontoSubTotalProducto"
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                Then Verifico que el elemento "SubTotalProductoCompra" contiene el texto alojado en la variable "MontoSubTotalProducto"

        Scenario: TC_SHOPPING_CART_023_02_Validar que la foto de producto de la página se corresponda con la del artículo añadido al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Obtengo el atributo "Titulo" del elemento "ImagenProducto" y lo guardo en la variable "ProductoImagen"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                Then Verifico que el elemento "ImagenProductoEnCarrito" contiene el atributo "ALT" alojado en la variable "ProductoImagen"

        Scenario: TC_SHOPPING_CART_023_03_Validar que el detalle de la página se corresponda con el del artículo añadido al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Obtengo el texto del elemento "NombreProducto" y lo guardo en la variable "NombreProducto"
                When Obtengo el texto del elemento "ReferenciaProducto" y lo guardo en la variable "ReferenciaProducto"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                Then Verifico que el elemento "NombreProductoEnCarrito" incluya el texto alojado en la variable "NombreProducto"
                Then Verifico que el elemento "ReferenciaProductoEnCarrito" incluya el texto alojado en la variable "ReferenciaProducto"

        Scenario: TC_SHOPPING_CART_023_04_Validar que el importe total de la página se corresponda con el del artículo añadido al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "AceptoCondiciones"
                And Hago click en "IrACaja"
                When Obtengo el texto del elemento "PrecioTotalCompra" y lo guardo en la variable "MontoTotalCompra"
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                Then Verifico que el elemento "PrecioTotalProductoEnCarrito" contiene el texto alojado en la variable "MontoTotalCompra"

        Scenario: TC_SHOPPING_CART_024_Validar que se pueda sumar (+) 1 ud. al artículo añadido en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "2"
                When Obtengo el atributo "Valor" del elemento "CantidadArticuloAgregadosEnCarrito" y lo guardo en la variable "CantidadArticuloAgregadosEnCarrito"
                Then Verifico que la variable "CantidadArticuloAgregadosEnCarrito" contenga el texto "2"

        Scenario: TC_SHOPPING_CART_025_Validar que el ícono de carrito (núm) se actualice al agregar 1ud. al artículo añadido en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "2"

        Scenario: TC_SHOPPING_CART_026_Validar que se actualice el importe subtotal al sumar (+) 1 ud. al artículo en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Obtengo el texto del elemento "SubTotalProductoCompra" y lo guardo en la variable "MontoSubTotalProducto"
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "2"
                Then Verifico que el elemento "SubTotalProductoCompra" contiene el número alojado en la variable "MontoSubTotalProducto" "multiplicado" por "2"

        Scenario: TC_SHOPPING_CART_027_Validar que se actualice el importe total al sumar (+) 1 ud. al artículo en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Obtengo el texto del elemento "TotalAPagarEnCarrito" y lo guardo en la variable "MontoTotalAPagarEnCarrito"
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "2"
                Then Verifico que el elemento "TotalAPagarEnCarrito" contenga cifra "mayor" que la alojada en la variable "MontoTotalAPagarEnCarrito"

        Scenario: TC_SHOPPING_CART_028_Validar que se puedan sumar (+) 2 uds. al artículo añadido en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "2"
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "3"
                When Obtengo el atributo "Valor" del elemento "CantidadArticuloAgregadosEnCarrito" y lo guardo en la variable "CantidadArticuloAgregadosEnCarrito"
                Then Verifico que la variable "CantidadArticuloAgregadosEnCarrito" contenga el texto "3"

        Scenario: TC_SHOPPING_CART_029_Validar que el ícono de carrito (núm) se actualice al agregar 2 uds. al artículo añadido en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "2"
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "3"

        Scenario: TC_SHOPPING_CART_030_Validar que se actualice el importe subtotal al sumar (+) 2 uds. al artículo en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Obtengo el texto del elemento "SubTotalProductoCompra" y lo guardo en la variable "MontoSubTotalProducto"
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "2"
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "3"
                Then Verifico que el elemento "SubTotalProductoCompra" contiene el número alojado en la variable "MontoSubTotalProducto" "multiplicado" por "3"

        Scenario: TC_SHOPPING_CART_031_Validar que se actualice el importe total al sumar (+) 2 uds. al artículo en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Obtengo el texto del elemento "TotalAPagarEnCarrito" y lo guardo en la variable "MontoTotalAPagarEnCarrito"
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "2"
                And Hago click en "AñadirCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "3"
                Then Verifico que el elemento "TotalAPagarEnCarrito" contenga cifra "mayor" que la alojada en la variable "MontoTotalAPagarEnCarrito"

        Scenario: TC_SHOPPING_CART_032_Validar que se pueda restar (-) 1 ud. al artículo añadido en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "2"
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "SustraerCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "1"
                When Obtengo el atributo "Valor" del elemento "CantidadArticuloAgregadosEnCarrito" y lo guardo en la variable "CantidadArticuloAgregadosEnCarrito"
                Then Verifico que la variable "CantidadArticuloAgregadosEnCarrito" contenga el texto "1"

        Scenario: TC_SHOPPING_CART_033_Validar que el ícono de carrito (núm) se actualice al eliminar 1ud. al artículo añadido en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "2"
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "SustraerCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "1"

        Scenario: TC_SHOPPING_CART_034_Validar que se actualice el importe subtotal al restar (-) 1 ud. al artículo en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Obtengo el texto del elemento "SubTotalProductoCompra" y lo guardo en la variable "MontoSubTotalProducto"
                And Hago click en "SustraerCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "1"
                Then Verifico que el elemento "SubTotalProductoCompra" contiene el número alojado en la variable "MontoSubTotalProducto" "dividido" por "2"

        Scenario: TC_SHOPPING_CART_035_Validar que se actualice el importe total al restar (-) 1 ud. al artículo en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Obtengo el texto del elemento "TotalAPagarEnCarrito" y lo guardo en la variable "MontoTotalAPagarEnCarrito"
                And Hago click en "SustraerCantidadArticulo"
                Then Verifico que el campo "Carrito" contenga el texto "1"
                Then Verifico que el elemento "TotalAPagarEnCarrito" contenga cifra "menor" que la alojada en la variable "MontoTotalAPagarEnCarrito"

        Scenario: TC_SHOPPING_CART_036_Validar que se abra un modal de alerta al superar stock disponible del artículo añadido.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Lleno el campo "CantidadArticuloEnCarrito" con "999999"
                When Presiona tecla ENTER en elemento "CantidadArticuloEnCarrito"
                Then Verifico que el campo "CartelErrorStock" contenga el texto "No hay suficiente producto en stock."

        Scenario: TC_SHOPPING_CART_038_Validar que se pueda seleccionar un artículo de la página e ingresar a la ficha del producto.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "ImagenProductoEnCarritoDesplegado"
                Then Verifico que el campo "Breadcumb" contenga el texto "TituloProductoAutomation" yendo a buscar la config

        Scenario: TC_SHOPPING_CART_039_Validar que se pueda sumar (+) 1 ud. al artículo añadido al carrito desde la ficha del producto.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "ImagenProductoEnCarritoDesplegado"
                Then Verifico que el campo "Breadcumb" contenga el texto "TituloProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Obtengo el atributo "Valor" del elemento "CantidadArticuloAgregadosEnCarrito" y lo guardo en la variable "CantidadArticuloAgregadosEnCarrito"
                Then Verifico que la variable "CantidadArticuloAgregadosEnCarrito" contenga el texto "2"

        Scenario: TC_SHOPPING_CART_040_Validar que el ícono de carrito (núm) se actualice al sumar 1 ud. al artículo desde la ficha del producto.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "ImagenProductoEnCarritoDesplegado"
                Then Verifico que el campo "Breadcumb" contenga el texto "TituloProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "2"

        Scenario: TC_SHOPPING_CART_041_Validar que se puedan sumar (+) 2 uds. al artículo añadido al carrito desde la ficha del producto.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "ImagenProductoEnCarritoDesplegado"
                Then Verifico que el campo "Breadcumb" contenga el texto "TituloProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Obtengo el atributo "Valor" del elemento "CantidadArticuloAgregadosEnCarrito" y lo guardo en la variable "CantidadArticuloAgregadosEnCarrito"
                Then Verifico que la variable "CantidadArticuloAgregadosEnCarrito" contenga el texto "3"

        Scenario: TC_SHOPPING_CART_042_Validar que el ícono de carrito (núm) se actualice al agregar 2uds. al artículo añadido desde la ficha del producto.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "ImagenProductoEnCarritoDesplegado"
                Then Verifico que el campo "Breadcumb" contenga el texto "TituloProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "3"

        Scenario: TC_SHOPPING_CART_045_Intentar sumar (+) más unidades de las que tiene disponible en stock el artículo añadido desde la ficha de producto.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "ImagenProductoEnCarritoDesplegado"
                Then Verifico que el campo "Breadcumb" contenga el texto "TituloProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "999999"
                And Hago click en "Comprar"
                Then Verifico que el campo "CartelErrorStock" contenga el texto "No hay suficiente producto en stock."

        Scenario: TC_SHOPPING_CART_046_Validar que se abra un modal de alerta al superar stock disponible del artículo añadido desde la ficha de producto.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                Then Verifico que el campo "Breadcumb" contenga el texto "TituloProductoAutomation" yendo a buscar la config
                When Lleno el campo "Cantidad" con "999999"
                And Hago click en "Comprar"
                Then Verifico que el campo "CartelErrorStock" contenga el texto "No hay suficiente producto en stock."

        Scenario: TC_SHOPPING_CART_048_Validar que se pueda eliminar el artículo aleatorio añadido al carrito desde la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "EliminarProductoCarrito"
                Then Verifico que el campo "MensajeAlertaBusqueda" contenga el texto "Su carrito está vacío."

        Scenario: TC_SHOPPING_CART_050_Validar que el ícono de carrito (núm) se actualice al eliminar el artículo añadido en la página de carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                And Hago click en "EliminarProductoCarrito"
                Then Verifico que el campo "Carrito" contenga el texto "0"

        Scenario: TC_SHOPPING_CART_051_Validar que se puedan añadir dos artículos aleatorios del mismo proveedor al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                When Verificar que el elemento "ProductosEnCarrito" del carrito contenga el producto "ProductoAutomation" yendo a buscar la config
                When Verificar que el elemento "ProductosEnCarrito" del carrito contenga el producto "ProductoAutomation2" yendo a buscar la config

        Scenario: TC_SHOPPING_CART_052_Validar que el ícono de carrito (núm) se actualice al añadir dos artículos aleatorios del mismo proveedor.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "2"

        Scenario: TC_SHOPPING_CART_054_Validar que al presionar el botón de carrito se despliegue la lista con dos artículos del mismo proveedor.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                When Verificar que el elemento "ProductosCarritoDesplegado" del carrito contenga el producto "ProductoAutomation" yendo a buscar la config
                When Verificar que el elemento "ProductosCarritoDesplegado" del carrito contenga el producto "ProductoAutomation2" yendo a buscar la config

        Scenario: TC_SHOPPING_CART_055_1_Validar que los importes subtotales de la lista se correspondan con los artículos añadidos al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Obtengo el texto del elemento "PrecioProducto" y lo guardo en la variable "PrecioProductoCompra1"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                When Obtengo el texto del elemento "PrecioProducto" y lo guardo en la variable "PrecioProductoCompra2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "Carrito"
                Then Verifico que el elemento "PrecioPrimerProductoEnCarritoDesplegado" contiene el texto alojado en la variable "PrecioProductoCompra1"
                Then Verifico que el elemento "PrecioSegundoProductoEnCarritoDesplegado" contiene el texto alojado en la variable "PrecioProductoCompra2"

        Scenario: TC_SHOPPING_CART_055_2_Validar que el importe total de la lista se corresponda con el de los artículos añadidos al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                And Hago click en "AceptoCondiciones"
                And Hago click en "IrACaja"
                When Obtengo el texto del elemento "PrecioTotalCompra" y lo guardo en la variable "MontoTotalCompra"
                And Hago click en "Carrito"
                Then Verifico que el elemento "PrecioTotalProductoEnCarritoDesplegado" contiene el texto alojado en la variable "MontoTotalCompra"

        Scenario: TC_SHOPPING_CART_056_Validar que se puedan eliminar los artículos añadidos desde la lista desplegable.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "2"
                And Hago click en "Carrito"
                And Hago click en "EliminarProductoCarritoDesplegado"
                And Hago click en "Carrito"
                And Hago click en "EliminarProductoCarritoDesplegado"
                Then Verifico que el campo "MensajeAlertaBusqueda" contenga el texto "Su carrito está vacío."

        Scenario: TC_SHOPPING_CART_058_Validar que el ícono de carrito (núm) se actualice al eliminar un artículo del mismo proveedor.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "2"
                And Hago click en "Carrito"
                And Hago click en "EliminarProductoCarritoDesplegado"
                And Hago click en "Carrito"
                And Hago click en "EliminarProductoCarritoDesplegado"
                Then Verifico que el campo "MensajeAlertaBusqueda" contenga el texto "Su carrito está vacío."
                Then Verifico que el campo "Carrito" contenga el texto "0"

        Scenario: TC_SHOPPING_CART_059_Validar que se actualice la lista desplegable al eliminar un artículo.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "2"
                And Hago click en "Carrito"
                And Hago click en "EliminarProductoCarritoDesplegado"
                And Hago click en "Carrito"
                Then Verifico que el elemento "PrecioSegundoProductoEnCarritoDesplegado" no exista

        Scenario: TC_SHOPPING_CART_060_1_Validar que los importes subtotales de la página de carrito se correspondan con los de los artículos añadidos.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                And Hago click en "AceptoCondiciones"
                And Hago click en "IrACaja"
                When Obtengo el texto del elemento "SubTotalProductoCompra" y lo guardo en la variable "MontoSubTotalProductos"
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                Then Verifico que el elemento "SubTotalProductoCompra" contiene el texto alojado en la variable "MontoSubTotalProductos"

        Scenario: TC_SHOPPING_CART_060_2_Validar que las fotos de los productos de la página se correspondan con la de los artículos añadidos al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Obtengo el atributo "Titulo" del elemento "ImagenProducto" y lo guardo en la variable "ProductoImagen"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                When Obtengo el atributo "Titulo" del elemento "ImagenProducto" y lo guardo en la variable "ProductoImagen2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                Then Verifico que el elemento "ImagenProductoEnCarrito" contiene el atributo "ALT" alojado en la variable "ProductoImagen"
                Then Verifico que el elemento "ImagenSegundoProductoEnCarrito" contiene el atributo "ALT" alojado en la variable "ProductoImagen2"

        Scenario: TC_SHOPPING_CART_060_03_Validar que los detalles de la página se correspondan con los de los artículos añadidos al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Obtengo el texto del elemento "NombreProducto" y lo guardo en la variable "NombreProducto"
                When Obtengo el texto del elemento "ReferenciaProducto" y lo guardo en la variable "ReferenciaProducto"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                When Obtengo el texto del elemento "NombreProducto" y lo guardo en la variable "NombreProducto2"
                When Obtengo el texto del elemento "ReferenciaProducto" y lo guardo en la variable "ReferenciaProducto2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                Then Verifico que el elemento "NombreProductoEnCarrito" incluya el texto alojado en la variable "NombreProducto"
                Then Verifico que el elemento "ReferenciaProductoEnCarrito" incluya el texto alojado en la variable "ReferenciaProducto"
                Then Verifico que el elemento "NombreSegundoProductoEnCarrito" incluya el texto alojado en la variable "NombreProducto2"
                Then Verifico que el elemento "ReferenciaSegundoProductoEnCarrito" incluya el texto alojado en la variable "ReferenciaProducto2"

        Scenario: TC_SHOPPING_CART_060_4_Validar que el importe total de la página se corresponda con el de los artículos añadidos al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                When Obtengo el texto del elemento "PrecioProducto" y lo guardo en la variable "PrecioProductoCompra1"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                When Obtengo el texto del elemento "PrecioProducto" y lo guardo en la variable "PrecioProductoCompra2"
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "UrlCarrito" yendo a buscar la config
                Then Verifico que el elemento "SubTotalProductoCompra" contiene la "suma" de las variables "PrecioProductoCompra1" y "PrecioProductoCompra2"

        Scenario: TC_SHOPPING_CART_062_Validar que se abra un modal de alerta al intentar agregar dos artículos de diferentes proveedores al carrito.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado

        Scenario: TC_SHOPPING_CART_065_Validar que los artículos añadidos permanezcan en el carrito al cerrar sesión y volver a iniciarla.
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "UsuarioLogueado" contenga el texto "NombreUsuario" yendo a buscar la config
                When Validar que el "Carrito" no tenga productos agregados
                When Abro la siguiente Url "ProductoAutomation" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                When Abro la siguiente Url "ProductoAutomation2" yendo a buscar la config
                And Hago click en "Comprar"
                Then Verifico que el elemento "PasosDeCompra" este habilitado
                Then Verifico que el campo "Carrito" contenga el texto "2"
                And Hago click en "NombreUsuario"
                And Hago click en "CerrarSesion"
                Then Verifico que el campo "VerificoCierreSesion" contenga el texto "Ingresar"
                And Hago click en "Ingresar"
                And Me muevo a la ventana de Login
                When Lleno el campo "Usuario" con "usuarioValido" yendo a buscar la config
                When Lleno el campo "Contraseña" con "passwordValido" yendo a buscar la config
                And Hago click en "IniciarSesion"
                And Me muevo a la pagina principal
                Then Verifico que el campo "Carrito" contenga el texto "2"