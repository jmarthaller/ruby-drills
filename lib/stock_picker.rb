
class StockPicker

    def max_profit(prices)
        left = 0
        right = 1
        max = 0
        array_holder = []

        while (right < prices.size) do
            can_slide = prices[right] <= prices[left]
            left = right if can_slide

            window = prices[right] - prices[left]
            
            if [max, window].max > max
                max = [max, window].max
                array_holder = [left, right]
            end
            right += 1
        end
       array_holder
    end

end
