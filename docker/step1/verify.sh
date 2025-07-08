# Ejecuta el comando y captura su salida.
# Redirige stderr a stdout para asegurarte de capturar cualquier error Docker también.
OUTPUT=$(docker run hello-world 2>&1)

# Verifica si el mensaje esperado está en la salida.
# La salida de hello-world suele incluir "Hello from Docker!".
if echo "$OUTPUT" | grep -q "Hello from Docker!"; then
  echo "Successful verification: 'docker run hello-world' was executed successfully."
  exit 0
else
  echo "Verification failed: The expected message was not found 'hello-world'."
  echo "Complete output:"
  echo "$OUTPUT"
  exit 1
fi