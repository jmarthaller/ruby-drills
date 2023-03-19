dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# > substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }


def substrings(entryWord, dict)
    output_hash = {}
    dict.each do |word|
        save = entryWord.scan(/(?=#{word})/).count
        output_hash[word] = save if save > 0
    end
    output_hash
end

# puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
