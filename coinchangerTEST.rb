require "minitest/autorun"
require_relative "coinchanger.rb"

class TestCoinChanger < Minitest::Test
	def test_0_cents_return_0
		cents_received = 0
		assert_equal({}, coin_changer(cents_received))
	end
	def test_1_cent_returns_1
		cents_received = 1
		assert_equal({:penny => 1}, coin_changer(cents_received))
	end
	def test_2_cents_return_2_pennies
		cents_received = 2
		assert_equal({:penny => 2}, coin_changer(cents_received))
	end
	def test_5_cents_returns_1_nickel
		cents_received = 5
		assert_equal({:nickel => 1}, coin_changer(cents_received))
	end
	def test_6_cents_returns_1_nickel_and_1_penny
		cents_received = 6
		assert_equal({:nickel => 1, :penny => 1}, coin_changer(cents_received))
	end
	def test_10_cents_returns_1_dime
		cents_received = 10
		assert_equal({:dime => 1}, coin_changer(cents_received))
	end
	def test_25_cents_returns_1_quarter
		cents_received = 25
		assert_equal({:quarter => 1}, coin_changer(cents_received))
	end
	def test_27_cents_returns_1_quarter_and_2_pennies
		cents_received = 27
		assert_equal({:quarter => 1, :penny => 2}, coin_changer(cents_received))
	end
	def test_37_cents_returns_1_quarter_1_dime_2_pennies
		cents_received = 37
		assert_equal({:quarter => 1, :dime => 1, :penny => 2}, coin_changer(cents_received))
	end
	
end