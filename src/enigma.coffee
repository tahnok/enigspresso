class Enigma extends Cipher
  @B_REFLECTOR: [24, 17, 20, 7, 16, 18, 11, 3, 15, 23, 13, 6, 14, 10, 12, 8, 4, 1, 5, 25, 2, 22, 21, 9, 0, 19]

  @I: [4, 10, 12, 5, 11, 6, 3, 16, 21, 25, 13, 19, 14, 22, 24, 7, 23, 20, 18, 15, 0, 8, 1, 17, 2, 9]
  @II: [0, 9, 3, 10, 18, 8, 17, 20, 23, 1, 11, 7, 22, 19, 12, 2, 16, 6, 25, 13, 15, 24, 5, 21, 14, 4]

  constructor: (@key) ->
    @wheel1 = @constructor.I.slice(0)

  encode: (message) ->
    a = @stringToArray(message)
    @arrayToString(a.map((i) => @encodeLetter(i)))

  encodeLetter: (letter) ->
   val = @wheel1[letter]
   val = @constructor.B_REFLECTOR[val]
   val = @wheel1.indexOf(val)
   @stepForward()
   val

  stepForward: ->
    first = @wheel1.shift()
    @wheel1.push(first)

  decode: (message) ->
    @encode(message)

  reset: ->
    @wheel1 = @constructor.I.slice(0)
