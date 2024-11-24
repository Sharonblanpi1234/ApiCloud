# Usamos una imagen base de Python
FROM python:3.10-slim

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo requirements.txt (si lo tienes) para instalar las dependencias
# Si no tienes el archivo requirements.txt, puedes instalar las dependencias directamente
COPY requirements.txt .

# Instalamos las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto del código fuente de la aplicación al contenedor
COPY . .

# Exponemos el puerto en el que Flask estará corriendo (por defecto Flask usa el puerto 5000)
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "main.py"]
