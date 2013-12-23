describe "stepping caesar", ->
  beforeEach ->
    @message = "attack"
    @key = 1
    @step = 1
    @cipher = new SteppingCaesar(@key, @step)

  it "should encode letter", ->
    expect(@cipher.encodeLetter(1)).toBe(2)
    expect(@cipher.encodeLetter(1)).toBe(3)

  it "should encode a message", ->
    expect(@cipher.encode("aaaaa")).toBe("bcdef")

