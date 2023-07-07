# Utiliza una imagen de Python como base
FROM python:3.6

# Establece el directorio de trabajo en /app
WORKDIR /app

# actualiza pip
RUN python -m pip install --upgrade pip

# Instala las bibliotecas necesarias.
RUN pip install numpy
RUN pip install deepspeech

# Copia tu código fuente al contenedor
COPY client.py .
COPY prueba-audio-texto.wav .
COPY deepspeech-0.9.3-models.scorer .
COPY deepspeech-0.9.3-models.pbmm .

# Ejecuta tu código Python
CMD ["python", "client.py", "--model", "deepspeech-0.9.3-models.pbmm", "--scorer", "/app/deepspeech-0.9.3-models.scorer", "--audio", "prueba-audio-texto.wav"]