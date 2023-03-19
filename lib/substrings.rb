
class Substring

    def substrings(entryWord, dict)
        output_hash = {}
        dict.each do |word|
            save = entryWord.scan(/(?=#{word})/).count
            output_hash[word] = save if save > 0
        end
        output_hash
    end

end

