# frozen_string_literal: true

def get_array_nums(str)
  # Returns an array of numbers
  str.bytes
end

def calculate_ascii_number(num, shift_factor)
  if num + shift_factor >= 91 && num <= 90
    # Upcase letters
    65 + (shift_factor - (90 - num)) - 1
  elsif num + shift_factor >= 123
    # Lowercase letters
    97 + (shift_factor - (122 - num)) - 1
  else
    # characters
    num + shift_factor
  end
end

def get_character(num, shift_factor)
  # Do nothing when this is not a letter
  return num.chr if num < 65 || (num >= 91 && num <= 96) || num > 122

  ascii = calculate_ascii_number(num, shift_factor)

  ascii.chr
end

def caesar_cipher(str, shift_factor = 1)
  modified_string = ''
  str_numbers = get_array_nums(str)
  str_numbers.each { |num| modified_string += get_character(num, shift_factor) }
  modified_string
end
