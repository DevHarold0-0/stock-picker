def stock_picker (array, new_array = Array.new)
  #new days array for modification
  days = [] + array

  if days[0] == days.max
      days.delete_at(0)
  elsif days[-1] == days.min
      days.delete_at(-1)
  end

  if days.index(days.min) > days.index(days.max)
      days.delete_at(days.index(days.min))
  end

  #days and original array comparison
  buy = days.min
  sell = days.max

  new_array << array.index(buy)
  new_array << array.index(sell)
  p new_array
end

stock_picker([17,3,6,9,15,8,6,1,10])