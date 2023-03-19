require 'bubble_sort'

RSpec.describe do 
    let(:instance) { BubbleSorter.new }
    let(:input) { [4,3,78,2,0,2] }

    it "sorts the list using bubble sort" do 
        expect(instance.b_sort(input)).to eq([0,2,2,3,4,78])
    end


end