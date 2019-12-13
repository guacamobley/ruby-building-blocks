#check each day against all future days.  
#
#Find combination with the highest difference (future day - current day)
#


def stock_picker prices
  max_profit = 0-Float::INFINITY
  buy_day = 0
  sell_day = 0

  prices.each.with_index do |first_price,first_index|
    profits_for_day = prices.map.with_index do |second_price,second_index|
      if first_index < second_index
        second_price - first_price
      else
        0-Float::INFINITY
      end
    end
    max_profit_for_day = profits_for_day.max
    if max_profit_for_day > max_profit
      max_profit = max_profit_for_day
      buy_day = first_index
      sell_day = profits_for_day.index(max_profit_for_day)
    end
  end

  return [buy_day,sell_day]
end