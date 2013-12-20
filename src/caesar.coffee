#= require cipher
class Caeser extends Cipher
  encode: (message) ->
    a = @stringToArray(message)
    b = a.map((i) => @mod((i + @key), 26))
    @arrayToString(b)

  decode: (message) ->
    a = @stringToArray(message)
    b = a.map((i) => @mod((i - @key), 26))
    @arrayToString(b)

