# spec/prob2_spec.rb
require 'prob3'

RSpec.describe StringWrapper do
  let(:stringwrapper) { StringWrapper.new("Test_string") }
  describe "#reverse" do
  it "reverses the string" do
    stringwrapper.reverse
    expect(stringwrapper.reverse).to eq("gnirts_tseT")
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      stringwrapper.upcase
      expect(stringwrapper.upcase).to eq("TEST_STRING")
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      stringwrapper.downcase
      expect(stringwrapper.downcase).to eq("test_string")
    end
  end
end
