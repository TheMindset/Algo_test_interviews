def max_numbers(list)
  list.join.split('').sort.reverse.join.to_i
end

p max_numbers([3, 34, 302, 50, 31])