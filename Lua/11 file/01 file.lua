-- Autor: Daniel Benjamin Perez Morales
-- GitHub: https://github.com/DanielPerezMoralesDev13
-- Correo electrónico: danielperezdev@proton.me

io.input("./salida.txt")
local file = io.read() -- puedes pasarle un numero como parametro para indicar cuantos caracteres quieres imprimir ejemplo: io.read(10) -> leer los 10 primeros caracteres de la primera linea
io.close()
print(file)

--[[
    Este código en Lua realiza las siguientes acciones:

    1. `io.input("./salida.txt")`: Establece el archivo de entrada actual como `salida.txt`. Esto significa que cualquier operación de lectura que siga utilizará este archivo como fuente de datos.

    2. `local file = io.read()`: Lee el contenido del archivo de entrada actual y lo almacena en la variable `file`. Al no especificar un parámetro numérico, `io.read()` leerá todo el contenido del archivo hasta el final.

    3. `io.close()`: Cierra el archivo de entrada actual, `salida.txt`. Es importante cerrar el archivo después de terminar de leerlo para liberar recursos.

    4. `print(file)`: Imprime el contenido del archivo, que se almacenó en la variable `file`, en la consola.

    En resumen, este código lee el contenido del archivo `salida.txt` y lo imprime en la consola.
]]