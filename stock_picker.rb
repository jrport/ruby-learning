arr = [14, 2, 22, 5, 4]

def stock_picker(price_range)
  best_range = price_range.each_with_index.to_a.combination(2).max_by{ |buy, sell| sell[0] - buy[0] }.map{ |price, date| date }
end

puts stock_picker(arr)

