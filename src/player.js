module.exports = {}
// Usa la libreria https://www.npmjs.com/package/hls.js
module.exports.html = `
<html>
<head><title>Stream Player RSNG</title></head>
  <body>
    <script src="https://cdn.jsdelivr.net/npm/hls.js@latest"></script>
    <video controls id="video"></video>
    <br>

    <br>
    <button id="loadTest">Test</button>
    <button id="loadSmall">Small</button>
    <button id="loadLarge">Large</button>

    <script>
      if(Hls.isSupported()) {
        var video = document.getElementById('video');
        var hls = new Hls();
        hls.attachMedia(video);

        hls.on(Hls.Events.MANIFEST_PARSED,function() {
          video.play();
        });

        document.querySelector("#loadTest").addEventListener("click", function () {
          hls.loadSource('output/stream.m3u8');
        })
        document.querySelector("#loadSmall").addEventListener("click", function () {
          hls.loadSource('output/more/small/stream.m3u8');
        })
        document.querySelector("#loadLarge").addEventListener("click", function () {
          hls.loadSource('output/more/large/stream.m3u8');
        })
     }
    </script>
  </body>
</html>`
