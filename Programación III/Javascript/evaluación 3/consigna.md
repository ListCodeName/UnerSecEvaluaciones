# Evaluación Práctica N° 3: JavaScript Avanzado y Manipulación del DOM
## Sistema de Gestión de Inventario Tecnológico (TechStore)

### 📖 Contexto del Problema
La tienda de hardware y tecnología "TechStore" necesita una aplicación web interna para administrar su inventario de productos de forma dinámica. La interfaz frontend básica ya ha sido provista en los archivos `index.html` y `style.css`.
Tu tarea como desarrollador/a es completar la lógica en el archivo `app.js` siguiendo los esqueletos y requerimientos planteados a continuación.

---

### 📋 Tareas y Requerimientos

#### 1. Definición de la Clase `Producto` (Valor: 2.0 Puntos)
En `app.js`, completa la declaración de la clase `Producto`:
* **Constructor**: Debe inicializar las propiedades: `id` (texto/número único), `nombre` (texto), `categoria` (texto), `precio` (número flotante) y `stock` (número entero).
* **Encapsulamiento (Getters y Setters)**:
  * Implementa getters para todos los atributos.
  * Implementa setters con validaciones estrictas para `precio` y `stock`.
    * El precio no puede ser un valor negativo ni vacío. Si lo es, debe lanzar un error descriptivo (`throw new Error(...)`).
    * El stock no puede ser un valor negativo ni ser decimal. Si lo es, debe lanzar un error descriptivo.
* **Método `calcularValorTotal()`**: Retorna el resultado de multiplicar el precio del producto por su stock disponible.

#### 2. Definición de la Clase `Inventario` (Valor: 2.5 Puntos)
La clase `Inventario` se encargará de gestionar el conjunto de productos activos:
* **Constructor**: Inicializa un array vacío para guardar los objetos de tipo `Producto`.
* **Método `agregarProducto(producto)`**:
  * Debe recibir una instancia de `Producto`.
  * Debe validar que no exista otro producto con el mismo `id` en el inventario. Si ya existe, debe lanzar un error: `"El ID del producto ya existe."`.
  * Agrega el producto al array.
* **Método `eliminarProducto(id)`**:
  * Busca el producto con el `id` especificado.
  * Si existe, lo remueve del inventario.
  * Si no existe, lanza un error indicando que el producto no fue encontrado.
* **Método `actualizarProducto(id, datosNuevos)`**:
  * Busca el producto y actualiza sus atributos si los nuevos datos son válidos.
* **Métodos Estadísticos**:
  * `obtenerValorTotalInventario()`: Retorna la suma del valor total de stock de todos los productos en el inventario.
  * `obtenerProductoMasCaro()`: Retorna el objeto `Producto` de mayor precio unitario.

#### 3. Conexión de Datos y JSON (Valor: 1.5 Puntos)
* Implementa la función asíncrona `cargarDatosIniciales()` que realice un `fetch` al archivo `productos.json`.
* Debe procesar la respuesta, instanciar los productos leídos como objetos de la clase `Producto` e insertarlos en el inventario.
* **Manejo de Errores**: Todo el bloque debe estar envuelto en un `try...catch`. En caso de falla (archivo no encontrado, JSON corrupto, etc.), se debe mostrar una alerta visual roja en la pantalla con el mensaje correspondiente y no romper la aplicación.

#### 4. Eventos e Interfaz del DOM (Valor: 3.0 Puntos)
Vincula la lógica de clases con el frontend provisto en `index.html`. Debes completar los esqueletos de los eventos:
* **Renderizado de Tabla**: Crea una función `renderizarTabla()` que vacíe la tabla (`<tbody>`) y dibuje una fila (`<tr>`) por cada producto. Cada fila debe tener:
  * El ID, Nombre, Categoría, Precio formateado, Stock y el Valor Total.
  * Dos botones de acción: uno para **Editar** (con clase `btn-editar`) y uno para **Eliminar** (con clase `btn-eliminar`).
* **Evento Formulario (Submit)**:
  * Al enviar el formulario con ID `form-producto`, intercepta el evento (`preventDefault()`).
  * Captura los datos ingresados por el usuario.
  * Valida que no haya campos vacíos. Si los hay, lanza una excepción y muéstrala en pantalla.
  * Si estás en modo creación, instancia un nuevo `Producto` y agrégalo al inventario.
  * Si estás en modo edición, actualiza los datos del producto seleccionado.
  * Limpia el formulario y re-renderiza la tabla y las estadísticas.
* **Evento Eliminar**: Al hacer clic en el botón de eliminar de una fila, remueve el producto del inventario, actualiza las estadísticas y vuelve a renderizar la tabla.
* **Evento Buscar / Filtrar**: Vincula el buscador (`input` con ID `filtro-busqueda`) para que al escribir, la tabla se actualice mostrando únicamente los productos cuyo nombre coincida parcialmente con el texto ingresado.
* **Estadísticas**: Actualiza los contenedores del DOM correspondientes con el valor total acumulado y el nombre del producto más caro del stock cada vez que se realice un cambio.

#### 5. Persistencia y Manejo de Errores Visuales (Valor: 1.0 Punto)
* **Persistencia**: Guarda el array de productos en el `localStorage` en cada modificación (alta, baja o edición) para que al recargar la página no se pierdan los datos cargados. Al iniciar la aplicación, debe comprobarse si existen datos en el `localStorage` antes de hacer el `fetch` al archivo `.json`.
* **Notificaciones**: Utiliza la caja de alertas provista en el HTML para mostrar mensajes de éxito (color verde) al guardar o eliminar con éxito, o mensajes de error (color rojo) con los textos capturados en los bloques `catch`.

---

### 📝 Pautas de Entrega y Evaluación
1. **Separación de responsabilidades**: Mantén el código limpio, bien indentado y ordenado. No realices modificaciones directas al DOM desde los métodos internos de la clase `Inventario`.
2. **Validaciones**: Se evaluará que la aplicación no permita guardar precios negativos, stocks decimales o negativos, ni campos de texto vacíos, informando al usuario en todo momento de manera amigable.
3. **Puntos Extra (1.0 Punto)**: Implementa la funcionalidad del botón "Exportar JSON" (`btn-exportar`) para permitir al usuario descargar el estado actual del inventario en un archivo llamado `inventario_actualizado.json`.
