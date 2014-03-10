describe "The enigma machine", ->
  beforeEach ->
    @cipher = new Enigma({wheels: ["I", "II", "III"]})

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

  it "should encode more than 26 letters", ->
    plain = "thexquickxbrownxfoxxjumpedxoverxthexlazyxdog"
    cipher = "vmnekloevgzbvywndnogylrfonwfuxphknugjyxwvopf"
    expect(@cipher.encode(plain)).toBe(cipher)

  it "should decode more than 26 letters", ->
    plain = "thexquickxbrownxfoxxjumpedxoverxthexlazyxdog"
    cipher = "vmnekloevgzbvywndnogylrfonwfuxphknugjyxwvopf"
    expect(@cipher.decode(cipher)).toBe(plain)
