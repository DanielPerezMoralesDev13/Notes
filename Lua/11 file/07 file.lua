-- Autor: Daniel Benjamin Perez Morales
-- GitHub: https://github.com/DanielPerezMoralesDev13
-- Correo electrónico: danielperezdev@proton.me

-- Intenta abrir el archivo "myfile.txt" para lectura
local fichero = io.open("myfile.txt", "r")

-- Verifica si el identificador de archivo no es nil (es decir, si el archivo se abrió correctamente)
if fichero then
    -- Lee todo el contenido del archivo y lo imprime
    print(fichero:read("*all"))
    -- Cierra el identificador de archivo
    fichero:close()
else
    -- Maneja el caso en el que el archivo no se pudo abrir
    print("Error: No se pudo abrir el archivo para leer.")
end
