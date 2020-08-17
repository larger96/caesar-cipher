require './lib/caesar-cipher.rb'

describe "#caesar_cipher" do
  it "works with single letters" do
    expect(caesar_cipher("a", 1)).to eq("b")
  end

  it "works with words" do
    expect(caesar_cipher("Aaa", 1)).to eq("Bbb")
  end

  it "works with phrases" do
    expect(caesar_cipher("Hello, World!", 5)).to eq("Mjqqt, Btwqi!")
  end

  it "works with negative shift" do
    expect(caesar_cipher("Mjqqt, Btwqi!", -5)).to eq("Hello, World!")
  end

  it "wraps" do
    expect(caesar_cipher("Z", 1)).to eq("A")
  end

  it "works with large shift factors" do
    expect(caesar_cipher("Hello, World!", 75)).to eq("Ebiil, Tloia!")
  end
end
