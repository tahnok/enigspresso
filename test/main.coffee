describe "A suite", ->
  message = ""
  key = 4

  beforeEach ->
    message = "attack"
    key = 4

  it "can decode an encoded message", ->
    transformed = caesarCipher(caesarCipher(message, key), -key)
    expect(transformed).toBe(message)

  it "can encode a message", ->
    expect(caesarCipher(message, key)).toBe('exxego')

describe "letterToNumber", ->

  it "turns an ascii letter into a numberic value from 0 to 25", ->
    expect(letterToNumber('a')).toBe(0)

  it "throws an error if input string is longer than 1 char", ->
    expect(-> letterToNumber("ab")).toThrow("should be single length string")
    expect(-> letterToNumber("!")).toThrow("must be a letter between a and z")

describe "numberToLetter", ->
  it "turns a number from 0 to 25 to an ascii string", ->
    expect(numberToLetter(0)).toBe("a")

  it "throws an error if not in range", ->
    expect(-> numberToLetter(-1)).toThrow("not in range")
    expect(-> numberToLetter(26)).toThrow("not in range")

describe "stringToArray", ->

  it "converts a string of chars to an array of ints", ->
    expect(stringToArray("abcdefghijklmnopqrstuvwxyz")).toEqual([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25])

describe "arrayToString", ->
  it "converts an array of number from 1 to 26 into", ->
    expect(arrayToString([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25])).toEqual("abcdefghijklmnopqrstuvwxyz")


describe "caesarCipher", ->
  message = "attack"

  it "casearCipher does nothing with a key of 0", ->
    expect(caesarCipher(message, 0)).toEqual(message)

  it "casearCipher does nothing with a key of 26", ->
    expect(caesarCipher(message, 26)).toEqual(message)

  it "encrypts a simple message", ->
    expect(caesarCipher(message, 1)).toEqual("buubdl")
    expect(caesarCipher(message, -25)).toEqual("buubdl")
