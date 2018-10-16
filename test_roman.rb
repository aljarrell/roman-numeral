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

  def test_for_m
    assert_equal("M", roman_numeral.fetch(1000))
  end

  def test_for_reverse_hash
    assert_equal(Hash, roman_numeral_reverse.class)
  end

  def test_for_one
    assert_equal(1, roman_numeral_reverse.fetch("I"))
  end

  def test_for_five
    assert_equal(5, roman_numeral_reverse.fetch("V"))
  end

  def test_for_one_hundred
    assert_equal(100, roman_numeral_reverse.fetch("C"))
  end

  def test_for_return_empty_string
    assert_equal("", rome(0,roman_numeral))
  end





end
