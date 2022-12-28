def stock_picker(stock)

  profit = 0
  when_to_buy_and_sell = [0, 0]
  stock_copy = stock.clone

  stock.each_with_index do |price_to_buy, index_to_buy|

    stock_copy.shift

    stock_copy.each_with_index do |price_to_sell, index_to_sell|
      if price_to_sell - price_to_buy > profit

        when_to_buy_and_sell[0] = index_to_buy
        when_to_buy_and_sell[1] = index_to_sell + index_to_buy + 1
        profit = price_to_sell - price_to_buy

      end
    end

    if stock_copy.length == 1

      return when_to_buy_and_sell

    end
  end
end

p stock_picker([17,3,6,9,15,8,6,1,10])
