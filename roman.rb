def roman_numeral
  numbers_key = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I",
}
end

def roman_numeral_reverse
  numbers_key = {
   400 => "CD",
   900 => "CM",
   90 => "XC",
   40 => "XL",
   9 => "IX",
   4 => "IV",
   1000 => "M",
   500 => "D",
   100 => "C",
   50 => "L",
   10 => "X",
   5 => "V",
   1 => "I"
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
  elsif hash == roman_numeral_reverse
    roman = 0
    hash.each do |value, letter|
      roman += letter * x.scan(/#{value}/).count()
      x = x.sub(/#{value}/, "")
    end
    return roman
  end
end
