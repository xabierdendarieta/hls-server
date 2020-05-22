# Servidor HLS

Servidor para el Trabajo 2 de la asignatura Redes y Sistemas de Nueva Generación

## Requisitos previos

* Maquina con Linux.
* Paquetes `npm` y `nodejs-legacy` instalados.

## Clonar el repositorio

Se necesita tener instalado el paquete `git`.

* `git https://github.com/xabierdendarieta/hls-server.git`

## Crear un archivo de streaming

Se necesita previamente tener instalado `ffmpeg`.

Para grabar directamente desde la **camara web**:

* Primero listar los dispositivos con: `ffmpeg -list_devices true -f dshow -i dummy`

* Luego para comenzar comando: `ffmpeg -f dshow -i video= "<dispositivo de la lista>" -vf scale=640:480 -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 1 stream.m3u8`

Para convertir un **arvhico MP4** -parámetros entre corchetes opcionales-:

* `ffmpeg -i archivo.mp4 [-vf scale=640:480] -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 5 -hls_list_size 0 stream.m3u8`

En el repositorio se ha provisto un script en bash -`getStreams.sh`- que descarga los streams extra. Si no se ejecuta, solo se tiene el de test. Para ejecutar se necesitan `wget` y `unzip` previamente.

## Poner en marcha el server

* Acceder hasta la carpeta `src`

* Utilizar comando: `node app.js`

* Acceder a: http://localhost:8000/ y clickar en el stream deseado (Funciona en Opera, Firefox y Chrome sin necesidad de extensiones)
