require 'count_words'

RSpec.describe "count words method" do

  it "returns 0 if string is empty" do
    result = count_words("")
    expect(result).to eq 0
  end

  it "returns 5 if string is five words long" do
    result = count_words("this is a short string")
    expect(result).to eq 5
  end

  it "returns 2 if string is five words long" do
    result = count_words("this is")
    expect(result).to eq 2
  end

  context "string is split by special characters and spaces" do
    it "returns 6 if string is five words long" do
      result = count_words("this is a short string")
      expect(result).to eq 5
    end
  end
end