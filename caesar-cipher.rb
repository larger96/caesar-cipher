=begin
Create a Caesar cipher that takes in a string and the shift factor and then
outputs the modified string.

A Caesar cipher is a type of substitution cipher in which each letter is replaced
by a letter some fixed number of positions down the alphabet.
E.g. The letter "A" with a right shift of 3 would become "D".

Input a string to be shifted and a key for how much to shift.
Define a range of characters for the cipher to accept.
Create an empty array to store shifted characters.
For each character in string find out what case it is in,
  or if it includes a special character.
Find the index of the current character in the range of characters.
Shift the index by the key value to obtain a new character index.
Push the new character value to the empty array.
Join and return the completed cipher.

Shift 1 lowercase letter down 1 position => done
Shift 1 lowercase letter down any positions => done
z -> a loop => done
Shift 1 uppercase letter down any positions => done
Z -> A loop => done
Ignores special characters => done
Shift 2 letters => done
Shift a string down any positions => done
=end

def caesar_cipher(str, key)
    alphabet_lower = ("a".."z").to_a
    alphabet_upper = ("A".."Z").to_a
  
    string_array = str.split(//)
    shifted_array = []
    
    string_array.each do |char|
      if alphabet_lower.include?(char)
        char_index = alphabet_lower.index { |x| x == char }
        new_index = char_index + key
        if new_index > alphabet_lower.length - 1
          new_index -= 26
        end
        shifted_array.push(alphabet_lower[new_index])
      elsif alphabet_upper.include?(char)
        char_index = alphabet_upper.index { |x| x == char }
        new_index = char_index + key
        if new_index > alphabet_upper.length - 1
          new_index -= 26
        end
        shifted_array.push(alphabet_upper[new_index])
      else
        shifted_array.push(char)
      end
    end
    puts shifted_array.join('')
  end
  
  caesar_cipher("What a string!", 5)
  caesar_cipher("Does it work in reverse?", -5)
  caesar_cipher("D ocdif do yjzn!", 5)
  
  