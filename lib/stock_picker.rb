def max_profit(prices) 
    [left, right, max] = [0, 1, 0];

    while (right < prices.size) {
        canSlide = prices[right] <= prices[left]
        left = right if canSlide

        window = prices[right] - prices[left]

        max = [max, window].max
        right += 1
    }

    max
end

puts max_profit([7,1,5,3,6,4])