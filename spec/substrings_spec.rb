
require 'substrings'


RSpec.describe Substring do 
    let(:substring_finder) { Substring.new }
    let(:entry_word) { "below" }
    let(:dictionary) { ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] }

    it "finds the substrings when provided a dictionary" do 
        answer = substring_finder.substrings(entry_word, dictionary) 

        expect(answer).to include("below")
    end

    it "identifies the length of the returned hash" do
        expect(substring_finder.substrings(entry_word, dictionary).count).to be(2)
    end

    it "counts the number of occurences" do 
        expect(substring_finder.substrings(entry_word, dictionary)["low"]).to eq(1)
    end



end