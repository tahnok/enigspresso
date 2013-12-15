{exec} = require 'child_process'

task 'build', 'Build project from src/*.coffee to lib/*.js', ->
  exec 'coffee --compile --output js/ src/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

task 'auto_build', 'Continually compile', ->
  exec 'coffee -wc -o js/ src/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

task 'test', 'Test enigma', ->
  exec 'karma start karma.conf', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr
