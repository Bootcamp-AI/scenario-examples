#!/bin/bash

echo "Ejecutando 'docker run hello-world' para verificación..."

# Ejecuta el comando docker y captura su salida completa (stdout y stderr).
# Esto es crucial para poder buscar el mensaje esperado.
OUTPUT=$(docker run hello-world 2>&1)

# Imprime la salida para depuración (opcional, útil si falla la verificación)
echo "Salida de 'docker run hello-world':"
echo "$OUTPUT"
echo "---"

# Verifica si la salida contiene el mensaje esperado de "Hello from Docker!"
if echo "$OUTPUT" | grep -q "Hello from Docker!"; then
  echo "Verificación exitosa: 'docker run hello-world' se ejecutó correctamente y produjo la salida esperada."
  exit 0 # Indicar éxito a Killercoda
else
  echo "Verificación fallida: No se encontró el mensaje 'Hello from Docker!' en la salida."
  echo "Posibles razones: Docker no está corriendo, el contenedor no pudo ejecutarse, o la salida fue diferente."
  exit 1 # Indicar fallo a Killercoda
fi