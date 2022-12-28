def caesar_cipher(string, shift)
  letters = string.split("")
  letters = letters.map do |letter|
    if letter.ord.between?(65, 90) or letter.ord.between?(97, 122)
      letter = letter.downcase.ord + shift > "z".ord ? letter.ord - 26 + shift : letter.ord + shift
    end
    letter.chr
  end
  letters.join
end

puts caesar_cipher("What a string!", 5)
