# Servidor HLS

En este respositorio está contenido el servidor para el Trabajo 2 de la asignatura Redes y Sistemas de Nueva Generación (Universidad Pública de Navarra), desarrollado por el Grupo 5.

El servidor está basado en el de otro repositorio.

## Requisitos previos

* Maquina con Linux.
* Paquetes `npm` y `nodejs-legacy` instalados.

## Inicialización

En primer lugar, habrá que instalar las dependencias de `npm`:

* `npm install`

Con esto ya estaría todo listo para ejecutarse. Aunque falta obtener varios archivos de stream adicionales.

## Crear un archivo de streaming

Se necesita previamente tener instalado `ffmpeg`, que es una librería de tratamiento de audio y video. Mayormente se utiliza para conversión de formatos, como haremos en nuestro caso, aunque incluye más funcionalidades.

### Preprocesado de video con anterioridad

Para convertir un **arvhico MP4** (parámetros entre corchetes opcionales):

* `ffmpeg -i archivo.mp4 [-vf scale=640:480] -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 5 -hls_list_size 0 stream.m3u8`

### Preprocesado de video en directo

Para grabar directamente desde la **camara web**:

* Primero listar los dispositivos con: `ffmpeg -list_devices true -f dshow -i dummy`

* Luego para comenzar comando: `ffmpeg -f dshow -i video= "<dispositivo de la lista>" -vf scale=640:480 -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 1 stream.m3u8`

En nuestro caso en lugar de utilizar una webcam, hemos obtado por grabar el escritorio de la maquina virtual, lo que nos parecio una opción más viable que el conseguir conectar una camara a la propia maquina virutal.

* Para grabar la pantalla haremos: `TODO`

### Archivos provistos

En el repositorio se ha provisto un script en bash, llamado `getStreams.sh`, que descarga los streams extra. Si no se ejecuta, solo se tiene el de test. Para ejecutar se necesitan `wget` y `unzip` previamente.

También se ha provisto de un video para falso directo, con la intención de generar el stream conforme se van sirviendo los segmentos temporales. Este archivo habrá que ir transformandolo en stream en directo mediante `ffmpeg`:

* `COMANDO AQUI UWU`

_NOTA: en caso de que los scripts fallen o no descarguen el contenido debido, acceder a las siguientes webs desde un navegador:_

* _Para los streams small y large: https://gofile.io/d/siShhl_

* _Para el video fake\_live.mp4: https://gofile.io/d/L5i3VT_

_Tras ese acceso, los scripts deberían funcionar correctamente._

## Poner en marcha el server

* Acceder hasta la carpeta `src`

* Utilizar comando: `node app.js`

* Acceder a: http://localhost:8000/ o http://localhost:8000/player.html y clickar en el stream deseado (Funciona en Opera, Firefox y Chrome sin necesidad de extensiones)

	* En caso de acceso externo al servidor, puede utilizarse la IPv6 configurada con la VPN de la asignatura: `http://[2001:720:1d10:fffe::1000:5]:8000/`

## Pruebas realizadas

Para probar el protocolo HSL y su comportamiento hemos decidido probar las siguientes situaciones:

* Pruebas con un único cliente conectandose:

	* 

* Pruebas con dos clientes simultaneos:

	* 