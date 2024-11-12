-- Autor: Daniel Benjamin Perez Morales
-- GitHub: https://github.com/DanielPerezMoralesDev13
-- Correo electrónico: danielperezdev@proton.me

io.input("./salida.txt")
local file = io.read("*all")
print(file)
io.close()

--[[
    Este código en Lua realiza lo siguiente:

    1. `io.input("./salida.txt")`: Establece el archivo de entrada actual como `salida.txt`. Esto significa que cualquier operación de lectura que siga utilizará este archivo como fuente de datos.

    2. `local file = io.read("*all")`: Lee todo el contenido del archivo de entrada actual y lo almacena en la variable `file`. El modificador `"*all"` indica que se debe leer todo el contenido del archivo.

    3. `print(file)`: Imprime el contenido del archivo en la consola.

    4. `io.close()`: Cierra el archivo de entrada actual, `salida.txt`. Es importante cerrar el archivo después de terminar de leerlo para liberar recursos.

    En resumen, este código lee todo el contenido del archivo `salida.txt` y lo imprime en la consola. Después de leer el archivo, se cierra para liberar los recursos del sistema.
]]