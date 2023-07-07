# DeepSpeech
## _Ejemplo de implementación de Deepspeech_

Este ejemplo utiliza DeepSpeech que se trata de un modelo de ASR (Automatic Speech Recognition)

## Partes

- client.py: pequeño script en pyton para el ejemplo
- deepspeech-0.9.3-models: modelo ASR 
- Dockerfile: Archivo Docker para ejecutar en un contenedor
- prueba-audio-texto.wav: Ejemplo de voz proporcionado por el mandaloriano

## Puesta en ejecución

Bajar desde Git el modelo 0.9.3 los archivos pbmm y tflite

https://github.com/mozilla/DeepSpeech/releases

[pbmm](https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.pbmm)
[tflite](https://github.com/mozilla/DeepSpeech/releases/download/v0.9.3/deepspeech-0.9.3-models.tflite)

Requiere docker instalado.

Se genera la imagen con los componentes
```sh
docker build -t fast_chat-ia .
```

Para ejecutar
```sh
docker exec -it fast_chat-ia bash
```

![Ejemplo](2023-05-11-18-11-56.gif)

## Link

Información relacionada:

- [deepspeech] - https://deepspeech.readthedocs.io/en/r0.9/Python-Examples.html
- [modelo_0.9.3] - https://deepspeech.readthedocs.io/en/v0.9.3/