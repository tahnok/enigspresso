describe "A cipher", ->

  beforeEach ->
    @message = "attack"
    @key = 4
    @cipher = new Cipher(@key)

  describe "letterToNumber", ->

    it "turns an ascii letter into a numberic value from 0 to 25", ->
      expect(@cipher.letterToNumber('a')).toBe(0)

    it "throws an error if input string is longer than 1 char", ->
      expect(=> @cipher.letterToNumber("ab")).toThrow("should be single length string")
      expect(=> @cipher.letterToNumber("!")).toThrow("must be a letter between a and z")

  describe "numberToLetter", ->

    it "turns a number from 0 to 25 to an ascii string", ->
      expect(@cipher.numberToLetter(0)).toBe("a")

    it "throws an error if not in range", ->
      expect(=> @cipher.numberToLetter(-1)).toThrow("not in range")
      expect(=> @cipher.numberToLetter(26)).toThrow("not in range")

  describe "stringToArray", ->

    it "converts a string of chars to an array of ints", ->
      expect(@cipher.stringToArray("abcdefghijklmnopqrstuvwxyz")).toEqual([0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25])

