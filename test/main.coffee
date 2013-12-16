describe "A suite", ->
  message = ""
  key = 4

  beforeEach ->
    message = "attack"
    key = 4

  it "can decode an encoded message", ->
    transformed = decode(encode(message, key), key)
    expect(transformed).toBe(message)

  it "can encode a message", ->
    expect(encode(message, key)).toBe('exxego')

describe "letterToNumber", ->

  it "turns an ascii letter into a numberic value from 0 to 25", ->
    expect(letterToNumber('a')).toBe(1)

  it "throws an error if input string is longer than 1 char", ->
    expect(-> letterToNumber("ab")).toThrow("should be single length string")

  it "throws an error if input is cannot be encoded", ->
    expect(-> letterToNumber("!")).toThrow("must be a letter between a and z")

describe "numberToLetter", ->
  it "turns a number from 0 to 25 to an ascii string", ->
    expect(numberToLetter(1)).toBe("a")

  it "throws an error if not in range", ->
    expect(-> numberToLetter(0)).toThrow("not in range")
    expect(-> numberToLetter(27)).toThrow("not in range")

describe "stringToArray", ->

  it "converts a string of chars to an array of ints", ->
    expect(stringToArray("abcdefghijklmnopqrstuvwxyz")).toEqual([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26])
