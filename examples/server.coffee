
###
Node server
###
http = require 'http'
fs = require 'fs'

server = http.createServer (req, res) ->
  if req.url is "/"
    res.writeHead 200,
      "Content-Type" : "text/html"
    res.end fs.readFileSync __dirname + "/index.html"
  else if req.url is '/underscore.js'
    res.writeHead 200,
      "Content-Type" : "text/html"
    res.end fs.readFileSync __dirname + "/underscore.js"
  else if req.url is '/jspath.js'
    res.writeHead 200,
      "Content-Type" : "text/html"
    res.end fs.readFileSync __dirname + "/jspath.js"
  else if req.url is '/mongoop.js'
    res.writeHead 200,
      "Content-Type" : "text/html"
    res.end fs.readFileSync __dirname + "/../index.js"
  else if req.url is '/index.coffee'
    res.writeHead 200,
      "Content-Type" : "text/html"
    res.end fs.readFileSync __dirname + "/index.coffee"
  return

server.listen 1337