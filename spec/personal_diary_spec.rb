require 'personal_diary'

RSpec.describe "make_snippet method" do
  
  it "returns whole string of less than 5 words" do
    result = make_snippet("Hello horse")
    expect(result).to eq "Hello horse"
  end

  it "returns 5 words followed by ... regardless of string length" do
    result = make_snippet("Hello horse, hello cow, hello sheep")
    expect(result).to eq "Hello horse, hello cow, hello..."
  end

  it "returns expty string if string is empty" do
  result = make_snippet("")
  expect(result).to eq ""
  end

  it "returns 5 words if 5 words ae inputted" do
    result = make_snippet("this is exactly five words")
    expect(result).to eq "this is exactly five words"
  end
end