require 'minitest/autorun'
require './digits.rb'

# Please run the follow comamnd
# `ruby ./test/test_digits.rb`

describe Digits do
	before do
		@digits = Digits.new
	end

	describe "when ask four" do

		it "must call four digits String" do
			@digits.four.must_be_kind_of String
			@digits.four.must_match /[0-9]{4}/
		end

		it 'must call different digits' do
			first = @digits.four
			@digits.four.wont_equal first
		end
	end

	describe "set 45" do
		it "must return 45 4-digits" do
			@digits.number(45).four.must_be_kind_of Array
			@digits.number(45).four.size.must_equal 45
		end

		it "must return 4-digits array" do
			array = @digits.number(45).four
			array[30].must_match /[0-9]{4}/
			array[23].wont_equal array[24]
		end
	end

end
