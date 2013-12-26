describe "The enigma machine", ->
  beforeEach ->
    @cipher = new Enigma(1)

  it "should encode", ->
    expect(@cipher.encode("aaa")).toBe("hjk")

  it "should decode", ->
    expect(@cipher.decode("hjk")).toBe("aaa")

  it "should encode and decode", ->
    plaintext = "aaa"
    ciphertext = @cipher.encode(plaintext)
    @cipher.reset()
    expect(@cipher.decode(ciphertext)).toBe(plaintext)

  it "should step", ->
    expect(@cipher.wheel1[0]).toBe(4)
    @cipher.stepForward()
    expect(@cipher.wheel1[0]).toBe(10)

  it "should reset" , ->
    @cipher.stepForward()
    expect(@cipher.wheel1[0]).toBe(10)
    @cipher.reset()
    expect(@cipher.wheel1[0]).toBe(4)

  it "should test", ->
    console.log @cipher.stringToArray("BDFHJLCPRTXVZNYEIWGAKMUSQO")
