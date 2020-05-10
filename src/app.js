#!/usr/bin/env node

var HLSServer = require('./index')
var http = require('http')
var argv = require('minimist')(process.argv.slice(2))
var cluster = require('cluster')
var numCPUs = require('os').cpus().length

if (cluster.isMaster) {
  masterProcess()
} else {
  childProcess()
}

function masterProcess () {
  if (argv['v'] || argv['version']) {
    console.log(require('../package.json').version)
    process.exit(0)
  }

  var port = 8000
  var dir = ''
  var path = '/'

  var workers = []
  for (let i = 0; i < numCPUs; i++) {
    var worker = cluster.fork()
    workers.push(worker)
    worker.send({
      port: port,
      dir: dir,
      path: path
    })
  }

  console.log('HLS server starting on port', port)
}

function childProcess () {
  process.on('message', (msg) => {
    var server = http.createServer()
    HLSServer(server, {
      path: msg.path,
      dir: msg.dir
    })
    server.listen(msg.port)

    console.log(`Worker ${process.pid} running...`)
  })
}
