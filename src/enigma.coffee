mod = (m, n) ->
  ((m % n) + n) % n

letterToNumber = (letter) ->
  throw "should be single length string" if letter.length != 1
  temp = letter.toLowerCase().charCodeAt(0)
  throw "must be a letter between a and z" if temp < 97 or temp > 122
  temp - 97

numberToLetter = (number) ->
  throw "not in range" if number > 25 or number < 0
  String.fromCharCode(number + 97)

stringToArray = (string) ->
  (letterToNumber char for char in string)

arrayToString = (array) ->
  array.map(numberToLetter).join("")

caesarCipher = (message, key) ->
  a = stringToArray(message)
  b = a.map((i) -> mod((i + key), 26))
  arrayToString(b)

class Enigma
  constructor: (@state) ->

  encodeLetter: (letter) ->
    alert @name + " moved #{meters}m."

