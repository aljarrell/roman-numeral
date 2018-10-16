require "minitest/autorun"
require_relative "roman.rb"

class My_test < Minitest::Test

  def test_one
    assert_equal(1,1)
  end

  def test_for_hash
    assert_equal(Hash, roman_numeral.class)
  end

  def test_for_i
    assert_equal("I", roman_numeral.fetch(1))
  end

  def test_for_iv
    assert_equal("IV",roman_numeral.fetch(4))
  end
  
  def test_for_v
    assert_equal("V", roman_numeral.fetch(5))
  end




end
