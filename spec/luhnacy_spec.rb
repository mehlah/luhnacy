require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Luhnacy" do
  it "should be able to identify if a number satisfies Luhn" do
    valid_number = '49927398716'
    Luhnacy.valid?(valid_number).should be_true
  end

  it "should be able to identify if a number does not satisfy Luhn" do
    invalid_number = '49927398715'
    Luhnacy.valid?(invalid_number).should be_false
  end

  it "should return a string of digits that satisfies Luhn" do
    string_size = 5
    candidate = Luhnacy.generate(string_size)
    candidate.should match /^\d{#{string_size}}$/
    Luhnacy.valid?(candidate).should be_true
  end
end