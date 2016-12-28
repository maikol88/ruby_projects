require "string_calculator"

describe StringCalculator do

  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eql(0)
      end
    end

    context "given 1" do
      it "returns 1" do
        expect(StringCalculator.add("1")).to eql(1)
      end
    end
  end
end
