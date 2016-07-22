def stocks (arr)
  max = arr.first
  min = arr.first
  possible_min = arr.first
  possible_min_idx = 0
  possible_max = 0
  possible_max_idx = 0
  arr.each_with_index do |price, idx|
    if (possible_min > price) && (idx != arr.length - 1)
      possible_min = price
      possible_min_idx = idx
    elsif (possible_max < price) && (idx != 0)
      possible_max = price
      possible_max_idx = idx
    end
    if ((possible_max - possible_min) > (max - min)) && (possible_max_idx > possible_min_idx)
      max = possible_max
      min = possible_min
    end
  end
  return [min, max]
end


puts stocks([15, 7, 12, 5])

stocks([9999, 10000, 2, 44, 200, 66, 1000, 0])
#doesnt work
