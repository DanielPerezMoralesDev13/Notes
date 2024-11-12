<!-- Autor: Daniel Benjamin Perez Morales -->
<!-- GitHub: https://github.com/DanielPerezMoralesDev13 -->
<!-- Correo electrónico: danielperezdev@proton.me -->

# ***Path***

```javascript
// Autor: Daniel Benjamin Perez Morales
// GitHub: https://github.com/DanielPerezMoralesDev13
// Correo electrónico: danielperezdev@proton.me

const path = require('node:path');

// Muestra el separador de ruta específico del sistema (por ejemplo, '/' en Unix y '\' en Windows)
console.log(path.sep); // Salida: '/' en Unix, '\' en Windows

// Unir rutas de manera segura independientemente del sistema operativo
// Aquí estamos creando una ruta 'Desktop/Directory/test.txt' o 'Desktop\Directory\test.txt'
const file_path = path.join("Desktop", "Directory", "test.txt");
console.log(file_path); // Salida: 'Desktop/Directory/test.txt' o 'Desktop\Directory\test.txt'

// Obtener el nombre base del archivo (sin la ruta)
// Aquí obtendremos 'password.txt' de la ruta completa
const base = path.basename("/tmp/DirectorySecret/password.txt");
console.log(base); // Salida: 'password.txt'

// Obtener el nombre del archivo sin la extensión especificada
// Aquí obtendremos 'password' de 'password.txt'
const filename = path.basename("/tmp/DirectorySecret/password.txt", ".txt");
console.log(filename); // Salida: 'password'

// Obtener la extensión del archivo
// Aquí obtendremos '.py' de 'My.super.code.py'
const extension = path.extname("My.super.code.py");
console.log(extension); // Salida: '.py'
```

## ***Explicación Detallada***

1. **Separador de Ruta (path.sep):**
   - *`path.sep` devuelve el carácter separador específico del sistema operativo utilizado en las rutas de archivo.*
   - *Ejemplo: `/` en sistemas Unix (Linux, macOS) y `\` en Windows.*

2. **Unión de Rutas (path.join):**
   - *`path.join` une segmentos de ruta en una ruta completa, manejando automáticamente los separadores de ruta y eliminando cualquier redundancia.*
   - *Esto es útil para crear rutas de archivo de manera segura que funcionen en cualquier sistema operativo.*

3. **Nombre Base del Archivo (path.basename):**
   - *`path.basename` devuelve el último segmento de una ruta, que es el nombre del archivo o directorio.*
   - *Esto es útil para obtener el nombre del archivo sin tener que preocuparse por la ruta completa.*

4. **Nombre de Archivo sin Extensión (path.basename):**
   - *`path.basename` también puede aceptar un segundo argumento para eliminar una extensión específica del nombre del archivo.*
   - *Esto permite obtener el nombre del archivo sin la extensión.*

5. **Extensión del Archivo (path.extname):**
   - *`path.extname` devuelve la extensión del archivo, incluyendo el punto (`.`).*
   - *Esto es útil para determinar el tipo de archivo basado en su extensión.*
   - *Siempre devolverá la última extensión en caso de nombres de archivo con múltiples puntos (ej. `My.super.code.py`).*

- *Estos métodos del módulo `path` de Node.js son esenciales para manejar rutas de archivo de manera segura y eficiente, especialmente cuando se desarrollan aplicaciones que deben funcionar en múltiples sistemas operativos.*
