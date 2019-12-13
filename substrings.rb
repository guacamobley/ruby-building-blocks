

def substrings input, substrings_to_find
  words_to_search = input.downcase.split(/\W+/)
  found_substrings = Hash.new(0)

  words_to_search.each do |word|
    substrings_to_find.each do |substring|
      substring.downcase!
      index = 0
      while word[index..-1].include? substring
        found_substrings[substring] += 1

        #keep looking in the same word, just after the spot where you found the substring
        index += 1+word[index..-1].index(substring)
      
      end
    end
  end
  return found_substrings
end
