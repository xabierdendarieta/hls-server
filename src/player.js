module.exports = {}
// Usa la libreria https://www.npmjs.com/package/hls.js
module.exports.html = `
<html>
<head><title>Stream Player RSNG</title></head>
  <body>
    <script src="https://cdn.jsdelivr.net/npm/hls.js@latest"></script>
    <video controls id="video"></video>
    <br>
    <input type="text" />
    <button id="load">Load</button>

    <script>
      if(Hls.isSupported()) {
        var video = document.getElementById('video');
        var hls = new Hls();
        hls.attachMedia(video);

        hls.on(Hls.Events.MANIFEST_PARSED,function() {
          video.play();
        });

        document.querySelector("#load").addEventListener("click", function () {
          hls.loadSource('output/' + document.querySelector("input").value);
        })
     }
    </script>
  </body>
</html>`
