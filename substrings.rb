def find_entries(str, dictionary)
    mapped_dictionary = dictionary.select { |entry| entry if str.downcase.include? entry.downcase }
    mapped_dictionary
end

def substrings(str, dictionary)
    # Select only the elements from the dictionary that appear in the reference string
    selected_entries = find_entries(str, dictionary)

    # Tally the number of occurences of an entry and put the result in a hash
    selected_entries.reduce(Hash.new(0)) do |word_tally, entry|
        word_tally[entry] += 1
        word_tally
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)