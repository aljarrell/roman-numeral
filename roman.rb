def roman_numeral
  numbers_key = {
    1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M",
  }
end

def roman_numeral_reverse
  numbers_key = {
    1 => "I",
    4 => "IV",
    5 => "V",
    9 => "IX",
    10 => "X",
    40 => "XL",
    50 => "L",
    90 => "XC",
    100 => "C",
    400 => "CD",
    500 => "D",
    900 => "CM",
    1000 => "M",
  }
  numeral = numbers_key.invert
  return numeral
end

def rome(x, hash)
  if x == 0
  return ""
elsif hash == roman_numeral
    roman = ""
    hash.each do |value, letter|
      roman << letter*(x / value)
      x = x % value
    end
    return roman
  elsif hash == numerals_reversed
    roman = 0
    hash.each do |value, letter|
      roman += letter * x.scan(/#{value}/).count()
      x = x.sub(/#{value}/, "")
    end
    return roman
  end
end
