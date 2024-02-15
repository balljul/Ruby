# frozen_string_literal: false


def caesar_cipher(sentence, shift_factor = 3)
  alphabet = ('a'..'z').to_a.concat(('A'..'Z').to_a)
  encrypted_string = ''

  sentence.each_char do |char|
    if alphabet.include?(char)
      base_char = char.ord < 91 ? 'A'.ord : 'a'.ord
      new_char = (((char.ord - base_char) + shift_factor) % 26) + base_char
      encrypted_string << new_char.chr
    else
      encrypted_string << char
    end
  end

  encrypted_string
end

plaintext = 'What a string!'

enc_text = caesar_cipher(plaintext, 5)
puts enc_text
