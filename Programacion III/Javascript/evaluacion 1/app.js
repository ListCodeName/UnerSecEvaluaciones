/**
 * EVALUACIÓN PRÁCTICA N° 3 - PROGRAMACIÓN III
 * Tema: Objetos, DOM, JSON, localStorage y Manejo de Errores
 * 
 * Estudiante: [Completar Nombre y Apellido]
 * Fecha: [Completar Fecha]
 */

// ==============================================================================
// 📖 GUÍA DE AYUDA: MANIPULACIÓN DE ARCHIVOS JSON (LECTURA, ESCRITURA Y ELIMINACIÓN)
// ==============================================================================
/*
   A continuación se presentan los fragmentos de código básicos para manipular
   un archivo JSON, aplicables tanto para Node.js (backend) como para el navegador.

   ----------------------------------------------------------------------
   OPCIÓN A: NODE.JS (Backend - Usando el módulo File System 'fs')
   ----------------------------------------------------------------------
   1. LECTURA (Abrir y parsear el archivo JSON):
      const fs = require('fs');
      const datosRaw = fs.readFileSync('productos.json', 'utf-8');
      const productos = JSON.parse(datosRaw);

   2. ESCRITURA / AGREGAR (Insertar un nuevo elemento):
      const nuevo = { id: "106", nombre: "Teclado Razer", categoria: "Periféricos", precio: 75000, stock: 15 };
      productos.push(nuevo);
      fs.writeFileSync('productos.json', JSON.stringify(productos, null, 2), 'utf-8');

   3. EDICIÓN / ACTUALIZACIÓN (Buscar y modificar propiedades):
      const idAEditar = "106";
      const producto = productos.find(p => p.id === idAEditar);
      if (producto) {
          producto.precio = 80000; // Modificación del valor
          fs.writeFileSync('productos.json', JSON.stringify(productos, null, 2), 'utf-8');
      }

   4. ELIMINACIÓN (Remover un elemento por su ID):
      const idAEliminar = "106";
      const productosRestantes = productos.filter(p => p.id !== idAEliminar);
      fs.writeFileSync('productos.json', JSON.stringify(productosRestantes, null, 2), 'utf-8');

   ----------------------------------------------------------------------
   OPCIÓN B: NAVEGADOR (Frontend - Usando LocalStorage)
   ----------------------------------------------------------------------
   1. LECTURA:
      const productos = JSON.parse(localStorage.getItem('productos') || '[]');

   2. ESCRITURA / AGREGAR / EDITAR:
      localStorage.setItem('productos', JSON.stringify(productos));

   3. ELIMINACIÓN:
      const filtrados = productos.filter(p => p.id !== idAEliminar);
      localStorage.setItem('productos', JSON.stringify(filtrados));
*/

// ==========================================
// PASO 1: DEFINICIÓN DE LA CLASE PRODUCTO
// ==========================================
class Producto {
    constructor(id, nombre, categoria, precio, stock) {
        if (!id || String(id).trim() === "") {
            throw new Error("El ID del producto no puede estar vacío.");
        }
        this._id = String(id).trim();
        this.nombre = nombre;
        this.categoria = categoria;
        this.precio = precio;
        this.stock = stock;
    }

    // Getters para cada propiedad
    get id() { return this._id; }
    get nombre() { return this._nombre; }
    get categoria() { return this._categoria; }
    get precio() { return this._precio; }
    get stock() { return this._stock; }

    // Setters con validaciones estrictas
    set nombre(val) {
        if (!val || val.trim() === "") {
            throw new Error("El nombre comercial no puede estar vacío.");
        }
        this._nombre = val.trim();
    }

    set categoria(val) {
        if (!val || val.trim() === "") {
            throw new Error("La categoría del producto no puede estar vacía.");
        }
        this._categoria = val.trim();
    }

    set precio(val) {
        const p = parseFloat(val);
        if (isNaN(p) || p < 0) {
            throw new Error("El precio no puede ser un valor negativo ni vacío.");
        }
        this._precio = p;
    }

    set stock(val) {
        const s = Number(val);
        if (isNaN(s) || s < 0 || !Number.isInteger(s)) {
            throw new Error("El stock no puede ser un valor negativo ni ser decimal.");
        }
        this._stock = s;
    }

    // Retorna el valor total de stock acumulado para este producto
    calcularValorTotal() {
        return this._precio * this._stock;
    }

    // Estructuración limpia al serializar a JSON (quita los guiones bajos)
    toJSON() {
        return {
            id: this.id,
            nombre: this.nombre,
            categoria: this.categoria,
            precio: this.precio,
            stock: this.stock
        };
    }
}

// ==========================================
// PASO 2: DEFINICIÓN DE LA CLASE INVENTARIO
// ==========================================
class Inventario {
    constructor() {
        this.productos = [];
    }

    /**
     * Agrega un nuevo producto al inventario.
     * @param {Producto} producto Instancia de la clase Producto.
     */
    agregarProducto(producto) {
        if (!(producto instanceof Producto)) {
            throw new Error("El objeto no es una instancia de Producto.");
        }
        const existe = this.productos.some(p => p.id === producto.id);
        if (existe) {
            throw new Error("El ID del producto ya existe.");
        }
        this.productos.push(producto);
    }

    /**
     * Elimina un producto del inventario mediante su ID.
     * @param {string|number} id ID del producto a eliminar.
     */
    eliminarProducto(id) {
        const index = this.productos.findIndex(p => p.id === String(id));
        if (index === -1) {
            throw new Error("Producto no encontrado.");
        }
        this.productos.splice(index, 1);
    }

    /**
     * Actualiza los datos de un producto existente.
     * @param {string|number} id ID del producto.
     * @param {Object} datosNuevos Objeto con las propiedades a actualizar (nombre, categoria, precio, stock).
     */
    actualizarProducto(id, datosNuevos) {
        const producto = this.productos.find(p => p.id === String(id));
        if (!producto) {
            throw new Error("Producto no encontrado.");
        }
        // Modificar las propiedades llamando a sus setters
        if (datosNuevos.nombre !== undefined) producto.nombre = datosNuevos.nombre;
        if (datosNuevos.categoria !== undefined) producto.categoria = datosNuevos.categoria;
        if (datosNuevos.precio !== undefined) producto.precio = datosNuevos.precio;
        if (datosNuevos.stock !== undefined) producto.stock = datosNuevos.stock;
    }

    /**
     * Retorna la lista completa de productos.
     */
    obtenerProductos() {
        return this.productos;
    }

    /**
     * Calcula la suma total del valor del stock de todos los productos.
     */
    obtenerValorTotalInventario() {
        return this.productos.reduce((sum, p) => sum + p.calcularValorTotal(), 0);
    }

    /**
     * Busca y retorna el producto de mayor precio unitario.
     */
    obtenerProductoMasCaro() {
        if (this.productos.length === 0) return null;
        return this.productos.reduce((max, p) => p.precio > max.precio ? p : max, this.productos[0]);
    }
}

// =========================================================
// PASO 3: INSTANCIACIÓN DE INVENTARIO Y REFERENCIAS AL DOM
// =========================================================
// Instancia global del inventario
const miInventario = new Inventario();

// Referencias a los elementos de la interfaz del DOM
const DOM = {
    // Formulario y campos
    form: document.getElementById('form-producto'),
    editandoId: document.getElementById('editando-id'),
    inputId: document.getElementById('input-id'),
    inputNombre: document.getElementById('input-nombre'),
    inputCategoria: document.getElementById('input-categoria'),
    inputPrecio: document.getElementById('input-precio'),
    inputStock: document.getElementById('input-stock'),
    btnGuardar: document.getElementById('btn-guardar'),
    btnCancelar: document.getElementById('btn-cancelar'),
    tituloFormulario: document.getElementById('titulo-formulario'),

    // Tabla e inyección
    cuerpoTabla: document.getElementById('cuerpo-tabla'),

    // Indicadores y estadísticas
    statValorTotal: document.getElementById('stat-valor-total'),
    statCantidad: document.getElementById('stat-cantidad-productos'),
    statMasCaro: document.getElementById('stat-producto-caro'),

    // Contenedor de Alertas
    contenedorAlerta: document.getElementById('contenedor-alerta'),
    mensajeAlerta: document.getElementById('mensaje-alerta'),
    btnCerrarAlerta: document.getElementById('btn-cerrar-alerta'),

    // Buscador y filtros
    filtroBusqueda: document.getElementById('filtro-busqueda'),
    filtroCategoria: document.getElementById('filtro-categoria'),

    // Acciones globales
    btnRestaurar: document.getElementById('btn-restaurar'),
    btnExportar: document.getElementById('btn-exportar')
};

// ==========================================
// PASO 4: CONTROL DE NOTIFICACIONES Y ALERTAS
// ==========================================
/**
 * Muestra un mensaje en el panel de notificaciones del HTML.
 * @param {string} mensaje Texto a mostrar en la alerta.
 * @param {'success'|'danger'|'info'} tipo Estilo visual de la alerta.
 */
function mostrarNotificacion(mensaje, tipo = 'info') {
    // Limpiar clases de alerta previas
    DOM.contenedorAlerta.className = 'alert';
    
    // Agregar la clase de color correspondiente
    DOM.contenedorAlerta.classList.add(`alert-${tipo}`);
    
    // Inyectar el texto del mensaje
    DOM.mensajeAlerta.innerText = mensaje;
    
    // Quitar la clase 'hidden' para hacer la alerta visible
    DOM.contenedorAlerta.classList.remove('hidden');
}

// ==========================================
// PASO 5: CARGA Y PERSISTENCIA DE DATOS (JSON / localStorage)
// ==========================================

/**
 * Guarda los datos del inventario en localStorage.
 */
function guardarEnStorage() {
    localStorage.setItem('productos', JSON.stringify(miInventario.obtenerProductos()));
}

/**
 * Carga los datos del inventario desde productos.json (Carga inicial)
 * o desde localStorage si ya existen datos guardados por el usuario.
 */
async function cargarDatosIniciales() {
    try {
        const stored = localStorage.getItem('productos');
        
        if (stored) {
            // 1. Cargar desde localStorage
            const raw = JSON.parse(stored);
            raw.forEach(p => {
                const prod = new Producto(p.id, p.nombre, p.categoria, p.precio, p.stock);
                miInventario.agregarProducto(prod);
            });
        } else {
            // 2. Si no hay datos en localStorage, fetch al archivo 'productos.json'
            const response = await fetch('productos.json');
            if (!response.ok) {
                throw new Error("No se pudo conectar a productos.json o el servidor no respondió.");
            }
            const raw = await response.json();
            raw.forEach(p => {
                const prod = new Producto(p.id, p.nombre, p.categoria, p.precio, p.stock);
                miInventario.agregarProducto(prod);
            });
            guardarEnStorage();
        }
        
        // Renderizar elementos cargados
        renderizarTabla();
        actualizarEstadisticas();
        
    } catch (error) {
        mostrarNotificacion('Error al cargar datos iniciales: ' + error.message, 'danger');
        console.error('Error al cargar datos:', error);
    }
}

// ==========================================
// PASO 6: FUNCIONES AUXILIARES DE RENDERIZADO DEL DOM
// ==========================================

/**
 * Limpia el formulario y lo restablece a su estado de creación original.
 */
function limpiarFormulario() {
    DOM.form.reset();
    DOM.editandoId.value = '';
    DOM.inputId.disabled = false;
    DOM.tituloFormulario.innerHTML = '<i class="fa-solid fa-circle-plus"></i> Registrar Producto';
    DOM.btnCancelar.classList.add('hidden');
}

/**
 * Carga los datos de un producto en el formulario para iniciar la edición.
 * @param {Producto} producto
 */
function cargarFormularioParaEditar(producto) {
    DOM.inputId.value = producto.id;
    DOM.inputId.disabled = true; // El ID de producto no se puede cambiar en edición
    DOM.inputNombre.value = producto.nombre;
    DOM.inputCategoria.value = producto.categoria;
    DOM.inputPrecio.value = producto.precio;
    DOM.inputStock.value = producto.stock;
    
    DOM.editandoId.value = producto.id;
    
    DOM.tituloFormulario.innerHTML = '<i class="fa-solid fa-pen-to-square"></i> Editar Producto';
    DOM.btnCancelar.classList.remove('hidden');
}

/**
 * Recalcula y actualiza los indicadores de estadísticas en el DOM.
 */
function actualizarEstadisticas() {
    const productos = miInventario.obtenerProductos();
    DOM.statCantidad.innerText = productos.length;
    
    const valorTotal = miInventario.obtenerValorTotalInventario();
    DOM.statValorTotal.innerText = `$${valorTotal.toLocaleString('es-AR', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}`;
    
    const masCaro = miInventario.obtenerProductoMasCaro();
    if (masCaro) {
        DOM.statMasCaro.innerText = `${masCaro.nombre} ($${masCaro.precio.toLocaleString('es-AR', { minimumFractionDigits: 2 })})`;
        DOM.statMasCaro.title = masCaro.nombre;
    } else {
        DOM.statMasCaro.innerText = "-";
        DOM.statMasCaro.removeAttribute('title');
    }
}

/**
 * Renderiza dinámicamente las filas de la tabla de productos en el HTML.
 * Debe soportar opcionalmente un array filtrado de productos.
 * @param {Array<Producto>} [productos] Array opcional de productos a renderizar.
 */
function renderizarTabla(productos = null) {
    // Vaciar el cuerpo de la tabla antes de renderizar
    DOM.cuerpoTabla.innerHTML = '';
    
    // Obtener la lista de productos a renderizar
    const listaAMostrar = productos || miInventario.obtenerProductos();

    // Validar si la lista está vacía
    if (listaAMostrar.length === 0) {
        DOM.cuerpoTabla.innerHTML = `
            <tr>
                <td colspan="7" class="empty-state text-center">
                    <i class="fa-solid fa-folder-open"></i> No hay productos cargados en el inventario.
                </td>
            </tr>
        `;
        return;
    }

    listaAMostrar.forEach(p => {
        const tr = document.createElement('tr');
        tr.innerHTML = `
            <td>${p.id}</td>
            <td>${p.nombre}</td>
            <td>${p.categoria}</td>
            <td class="text-right">$${p.precio.toLocaleString('es-AR', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}</td>
            <td class="text-center">${p.stock}</td>
            <td class="text-right">$${p.calcularValorTotal().toLocaleString('es-AR', { minimumFractionDigits: 2, maximumFractionDigits: 2 })}</td>
            <td class="text-center">
                <button class="btn-action btn-editar" title="Editar"><i class="fa-solid fa-pen-to-square"></i></button>
                <button class="btn-action btn-eliminar" title="Eliminar"><i class="fa-solid fa-trash-can"></i></button>
            </td>
        `;

        // Asociar eventos correspondientes a los botones
        tr.querySelector('.btn-editar').addEventListener('click', () => {
            cargarFormularioParaEditar(p);
        });

        tr.querySelector('.btn-eliminar').addEventListener('click', () => {
            if (confirm(`¿Está seguro de eliminar el producto "${p.nombre}"?`)) {
                eliminarProductoDelInventario(p.id);
            }
        });

        DOM.cuerpoTabla.appendChild(tr);
    });
}

/**
 * Remueve un producto del inventario, actualiza el storage y renderiza de nuevo.
 * @param {string} id ID del producto
 */
function eliminarProductoDelInventario(id) {
    try {
        miInventario.eliminarProducto(id);
        guardarEnStorage();
        renderizarTabla();
        actualizarEstadisticas();
        mostrarNotificacion("Producto eliminado con éxito.", "success");
    } catch (error) {
        mostrarNotificacion(error.message, "danger");
    }
}

// ==========================================
// PASO 7: MANEJADORES DE EVENTOS
// ==========================================

/**
 * Manejador para el envío del formulario (Alta y Modificación)
 */
DOM.form.addEventListener('submit', function (event) {
    event.preventDefault();
    
    try {
        const id = DOM.inputId.value.trim();
        const nombre = DOM.inputNombre.value.trim();
        const categoria = DOM.inputCategoria.value;
        const precioRaw = DOM.inputPrecio.value;
        const stockRaw = DOM.inputStock.value;
        
        // 2. Realizar validaciones básicas (que ningún campo esté vacío)
        if (!id || !nombre || !categoria || precioRaw === "" || stockRaw === "") {
            throw new Error("Todos los campos del formulario son obligatorios.");
        }

        const precio = parseFloat(precioRaw);
        const stock = parseInt(stockRaw, 10);

        // 3. Comprobar si estamos en modo edición o creación
        const editandoId = DOM.editandoId.value;

        if (editandoId) {
            // MODO EDICIÓN
            miInventario.actualizarProducto(editandoId, { nombre, categoria, precio, stock });
            mostrarNotificacion("Producto actualizado con éxito.", "success");
        } else {
            // MODO CREACIÓN
            const nuevoProducto = new Producto(id, nombre, categoria, precio, stock);
            miInventario.agregarProducto(nuevoProducto);
            mostrarNotificacion("Producto registrado con éxito.", "success");
        }

        // 4. Lógica común posterior
        guardarEnStorage();
        renderizarTabla();
        actualizarEstadisticas();
        limpiarFormulario();
        
    } catch (error) {
        // Mostrar error en la caja de alerta
        mostrarNotificacion(error.message, 'danger');
    }
});

// Evento del botón Cancelar del Formulario
DOM.btnCancelar.addEventListener('click', function () {
    limpiarFormulario();
});

// Eventos de Filtrado / Búsqueda en tiempo real
DOM.filtroBusqueda.addEventListener('input', filtrarInventario);
DOM.filtroCategoria.addEventListener('change', filtrarInventario);

function filtrarInventario() {
    // 1. Obtener texto y categoría seleccionada
    const texto = DOM.filtroBusqueda.value.toLowerCase().trim();
    const categoria = DOM.filtroCategoria.value;
    
    // 2. Filtrar el array
    const filtrados = miInventario.obtenerProductos().filter(p => {
        const coincideNombre = p.nombre.toLowerCase().includes(texto);
        const coincideCategoria = !categoria || p.categoria === categoria;
        return coincideNombre && coincideCategoria;
    });
    
    // 3. Renderizar tabla filtrada
    renderizarTabla(filtrados);
}

// Evento del botón de restauración de datos iniciales
DOM.btnRestaurar.addEventListener('click', function () {
    if (confirm("¿Está seguro de restaurar el inventario inicial de productos? Se perderán las modificaciones locales.")) {
        localStorage.removeItem('productos');
        miInventario.productos = [];
        cargarDatosIniciales();
        limpiarFormulario();
        mostrarNotificacion("Inventario restaurado a los valores por defecto.", "success");
    }
});

// Evento para cerrar la alerta manualmente
DOM.btnCerrarAlerta.addEventListener('click', function () {
    DOM.contenedorAlerta.classList.add('hidden');
});

// PUNTOS EXTRA: Exportar el estado actual del inventario como archivo JSON descargable
DOM.btnExportar.addEventListener('click', function () {
    try {
        const productos = miInventario.obtenerProductos();
        const jsonStr = JSON.stringify(productos, null, 2);
        
        const blob = new Blob([jsonStr], { type: 'application/json' });
        const url = URL.createObjectURL(blob);
        
        const a = document.createElement('a');
        a.href = url;
        a.download = 'inventario_actualizado.json';
        document.body.appendChild(a);
        a.click();
        document.body.removeChild(a);
        
        URL.revokeObjectURL(url);
        mostrarNotificacion("Inventario exportado y descargado con éxito.", "success");
    } catch (error) {
        mostrarNotificacion('Error al exportar inventario: ' + error.message, 'danger');
    }
});

// ==========================================
// PASO 8: INICIALIZACIÓN DE LA APLICACIÓN
// ==========================================
document.addEventListener('DOMContentLoaded', () => {
    cargarDatosIniciales();
});
