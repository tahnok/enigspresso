{exec} = require 'child_process'
fs = require 'fs'
Snockets = require 'snockets'

INPUT_FILE = "src/awesomefile.coffee"
OUTPUT_FILE = "js/enigma.min.js"

task 'test', 'Test enigma', ->
  exec 'karma start karma.conf.coffee', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

task 'build', 'concat', ->
  snockets = new Snockets()
  js = snockets.getConcatenation INPUT_FILE, async: false, minify: true
  fs.writeFileSync OUTPUT_FILE, js
