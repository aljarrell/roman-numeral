require "minitest/autorun"
require_relative "roman.rb"

class My_test < Minitest::Test

  def test_one
    assert_equal(1,1)
  end

  def test_for_hash
    assert_equal(Hash, roman_numeral.class)
  end





end
