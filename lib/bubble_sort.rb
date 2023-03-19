class BubbleSorter

    def b_sort(list)
        return list if list.size <= 1
        swapped = true
        while swapped do 
            swapped = false
            0.upto(list.size - 2) do |idx|
                if (list[idx] > list[idx + 1])
                    list[idx], list[idx + 1] = list[idx+1], list[idx]
                    swapped = true
                end
            end
        end
        list
    end

end