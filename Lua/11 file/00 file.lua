-- Autor: Daniel Benjamin Perez Morales
-- GitHub: https://github.com/DanielPerezMoralesDev13
-- Correo electrónico: danielperezdev@proton.me 

io.output("./salida.txt")
io.write("Hello word")
io.close()

--[[
    Este código en Lua realiza tres acciones:

    1. `io.output("./salida.txt")`: Este comando establece el archivo de salida actual para que sea `salida.txt`. Esto significa que cualquier salida generada por funciones como `io.write` se dirigirá a este archivo en lugar de a la salida estándar (generalmente la consola).

    2. `io.write("Hello world")`: Esta línea escribe el texto "Hello world" en el archivo de salida actual. Dado que hemos establecido el archivo de salida como `salida.txt`, este texto se escribirá en ese archivo.

    3. `io.close()`: Finalmente, esta línea cierra el archivo de salida actual, `salida.txt`. Es importante cerrar el archivo después de terminar de escribir en él para liberar recursos y asegurarse de que todos los datos se escriban correctamente.

    En resumen, este código escribe "Hello world" en un archivo llamado `salida.txt` y luego cierra ese archivo.
]]