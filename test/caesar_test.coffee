describe "A caesar cipher", ->

  beforeEach ->
    @message = "attack"
    @key = 4
    @cipher = new Caeser(@key)

  it "can decode an encoded message", ->
    transformed = @cipher.decode(@cipher.encode(@message))
    expect(transformed).toBe(@message)

  it "can encode a message", ->
    expect(@cipher.encode(@message)).toBe('exxego')

  it "does nothing with a key of 0", ->
    @cipher = new Caeser(0)
    expect(@cipher.encode(@message)).toEqual(@message)

  it "does nothing with a key of 26", ->
    @cipher = new Caeser(26)
    expect(@cipher.encode(@message)).toEqual(@message)

  it "encrypts a simple message", ->
    @cipher = new Caeser(1)
    expect(@cipher.encode(@message)).toEqual("buubdl")
    @cipher = new Caeser(-25)
    expect(@cipher.encode(@message)).toEqual("buubdl")

