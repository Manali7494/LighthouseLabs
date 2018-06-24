# Code to run the test: bundle exec rspec --> in main folder eveything happens automatically
require "string_calculator"

# DOT FORMAT!!
describe StringCalculator do
  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eql(0)
      end
    end

    context "given '4'" do
      it "returns 4" do
        expect(StringCalculator.add("4")).to eql(4)
      end
    end

    context "given '10' " do
      it "returns 10" do
        expect(StringCalculator.add("10")).to eql(10)
      end
    end

    context "two numbers" do
      context "given '2,4'" do
        it "returns 6" do
          expect(StringCalculator.add("2,4")).to eql(6)
        end
      end
    end

    context "given '17,100'" do
      it "returns 117" do
        expect(StringCalculator.add("17,100")).to eql(117)
      end
    end
  end
end

# ------ DOCUMENTATION FORMAT --------
=begin
METHOD TO CALL
$ bundle exec rspec --format documentation

StringCalculator
  .add
    given an empty string
      returns zero
    single numbers
      given '4'
        returns 4
      given '10'
        returns 10
    two numbers
      given '2,4'
        returns 6
      given '17,100'
        returns 117
=end
