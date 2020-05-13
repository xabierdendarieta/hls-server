# Servidor HLS
Servidor para el Trabajo 2 de la asignatura Redes y Sistemas de Nueva Generación

## Comandos

### Grabar video camara pc

Primero listar los dispositivos con: `ffmpeg -list_devices true -f dshow -i dummy`

Luego para comenzar comando: `ffmpeg -f dshow -i video= "<dispositivo de la lista>" -vf scale=640:480 -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 1 stream.m3u8`

### Instalar el server

Acceder a: http://localhost:8000/player.html y escribir en load _stream.m3u8_
(Funciona en Opera y Chrome sin extensiones)
