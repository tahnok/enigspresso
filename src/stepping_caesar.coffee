class SteppingCaesar extends Cipher
  constructor: (@key, @step) ->
    @initialKey = @key
    @initialStep = @step

  encode: (message) ->
    a = @stringToArray(message)
    b = a.map((i) => @encodeLetter(i))
    @arrayToString(b)

  encodeLetter: (letter) ->
    letter = @mod((letter + @key), 26)
    @stepForward()
    letter

  stepForward: ->
    @key = @mod((@step + @key), 26)

  reset: ->
    @key = @initialKey

