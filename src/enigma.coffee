letterToNumber = (letter) ->
  throw "should be single length string" if letter.length != 1
  temp = letter.toLowerCase().charCodeAt(0)
  throw "must be a letter between a and z" if temp < 97 or temp > 122
  temp - 96

numberToLetter = (number) ->
  offset = if number == 32 then 0 else 96
  String.fromCharCode(number + offset)

stringToArray = (string) ->
  (letterToNumber char for char in string)

arrayToString = (array) ->
  array.map(numberToLetter).join("")

caesarCipher = (message, key) ->
  a = stringToArray(message)
  b = a.map((i) -> i + key)
  arrayToString(b)

encode = (message, key) ->
  caesarCipher(message, key)

decode = (message, key) ->
  caesarCipher(message, -key)

class Enigma
  constructor: (@state) ->

  encodeLetter: (letter) ->
    alert @name + " moved #{meters}m."

