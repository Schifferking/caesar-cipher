# Use reduce to iterate and return the string modified 
# Check if num is between 65 and 90 or 97 and 122
# "Ignore" if not in ranges
# Use .chr to convert num to character

def get_array_nums(str)
  #Returns an array of numbers
  str.bytes
end

def caesar_cipher(str, shift_factor=1)
  modified_string = ""
  str_numbers = get_array_nums(str)
  str_numbers.reduce { |modified_string, num| str + }
end