def get_array_nums(str)
  #Returns an array of numbers
  str.bytes
end

def modify_number(num, shift_factor)
  # Do nothing when this is not a letter
  if (num < 65 || (num >= 91 && num <= 96) || num > 122)
    return num.chr
  end

  if (num + shift_factor >= 91 && num <= 90)
    # Upcase letters
    num = 65 + (shift_factor - (90 - num)) - 1
  elsif (num + shift_factor >= 123)
    # Lowercase letters
    num = 97 + (shift_factor - (122 - num)) - 1
  else 
    num += shift_factor
  end

  num.chr
end

def caesar_cipher(str, shift_factor=1)
  modified_string = ""
  str_numbers = get_array_nums(str)
  str_numbers.each { |num| modified_string += modify_number(num, shift_factor) }
  modified_string
end