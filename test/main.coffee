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

