# Find entries in the dictionary that also exist in the string, remove those that don't exist
def find_entries(str, dictionary)
    dictionary.select { |entry| entry if str.downcase.include? entry.downcase }
end

# Count the number of occurences of a particular string in another string
def count_occurences(string_to_inspect, string_to_find)
    string_to_inspect.downcase.scan(/#{string_to_find}/).count
end

def substrings(str, dictionary)

    # Tally the number of occurences of an entry and put the result in a hash
    find_entries(str, dictionary).reduce(Hash.new(0)) do |word_tally, entry|
        word_tally[entry] += count_occurences(str, entry)
        word_tally
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
