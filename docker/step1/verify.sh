# Ejecuta el comando y captura su salida.
# Redirige stderr a stdout para asegurarte de capturar cualquier error Docker también.
OUTPUT=$(docker run hello-world 2>&1)

# Verificar si la salida contiene el mensaje esperado de "Hello from Docker!"
# El comando 'grep -q' buscará la cadena y devolverá 0 si la encuentra, 1 si no.
if echo "$OUTPUT" | grep -q "Hello from Docker!"; then
  echo "Verificación exitosa: 'docker run hello-world' se ejecutó correctamente y produjo la salida esperada."
  exit 0 # Indicar éxito a Killercoda
else
  echo "Verificación fallida: No se encontró el mensaje 'Hello from Docker!'."
  echo "Salida completa de docker run:"
  echo "$OUTPUT"
  exit 1 # Indicar fallo a Killercoda
fi