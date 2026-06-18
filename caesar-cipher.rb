# Includes

# Functions
def caesar_cipher(string, shift=1)
  def cipher_shift(char, shift)
    asci = char.ord
    convert = false
    
    if asci.between?(65, 90)
      min = 65
      max = 90
      convert = true
    elsif asci.between?(97, 122)
      min = 97
      max = 122
      convert = true
    end

    if convert == true
      asci = (max-asci >= shift)? asci+shift : shift-(max-asci)+min-1
    end

    asci.chr
  end

  char_array = string.split('')
  shifted_char_array = char_array.map do |char|
    cipher_shift(char, shift)
  end
  shifted_char_array.join('')
end



# # custom testing
# Tests = [
#   ['Hello!', 'Ifmmp!'],
#   ['Embeque?', 'Fncfrvf?'],
#   ['You\'re?', 'Zpv\'sf?'],
#   ['CaSe MaT TeRs', 'DbTf NbU UfSt'],
# ]
# Tests.each_with_index do |test_string, index|
#   if caesar_cipher(test_string[0]) == test_string[1]
#     puts "Test #{index+1} is Successful"
#     puts nil
#   end
# end

puts caesar_cipher('This is a secret Message', 10)