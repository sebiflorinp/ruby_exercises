def substrings(sentence, substrings_to_check)
  sentence = sentence.split(" ")
  solution = Hash.new()
  substrings_to_check.each do |substring|
    how_many_times_it_appeared = sentence.reduce(0) do |counter, word_from_sentence|
      counter +=1 if word_from_sentence.downcase.include? substring
      counter
    end
    solution[substring] = how_many_times_it_appeared unless how_many_times_it_appeared == 0
  end
  solution
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
