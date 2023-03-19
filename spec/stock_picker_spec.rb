require "stock_picker"


RSpec.describe do 
    let(:stock_picker) { StockPicker.new }
    let(:prices) { [17,3,6,9,15,8,6,1,10] }

    it "determines the best day to buy stock" do 
        expect(stock_picker.max_profit(prices).first).to eq(1)
    end

    it "determines the best day to sell stock" do 
        expect(stock_picker.max_profit(prices).last).to eq(4)
    end

    it "identifies the max profit" do
        buy_price = prices[stock_picker.max_profit(prices).first]
        sell_price = prices[stock_picker.max_profit(prices).last]

        expect(sell_price - buy_price).to eq(12)
    end

    it "can determine when no profit can be made" do 
        edge_case = [7,1,5,3,6,4,20]
        expect(stock_picker.max_profit(edge_case).first).to be(1)
        expect(stock_picker.max_profit(edge_case).last).to be(6)
    end

    it "can determine when no profit can be made" do 
        decreasing_prices = [7,6,4,3,1]
        expect(stock_picker.max_profit(decreasing_prices).first).to be_falsy
    end
end