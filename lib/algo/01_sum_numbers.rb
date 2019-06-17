# frozen_string_literal: true

# Consigne :
# Écrire 3 fonctions qui calculent la somme des nombres
# dans une liste utilisant 3 façons différentes (while, each, recursion en ruby)

require 'pry'

# FIRST WAY
def sum_numbers1(list)
  sum = 0

  list.each { |number| sum += number }
  sum
end

p sum_numbers1([1, 4, 20, 0.5, -15, 120, 30, 0.14])

# SECOND WAY
def sum_numbers2(list)
  number = 0
  sum = 0

  while number < list.count
    sum += list[number]
    number += 1
  end
  sum
end

p sum_numbers2([1, 4, 20, 0.5, -15, 120, 30, 0.14])

# THIRD WAY
## Fisrt solution work but I DON'T NOW WHY FOR THE MOMENT
# def sum_numbers(list)
#   if list.empty?
#     return 0
#   else
#     number = list.shift
#     number + sum_numbers(list)
#   end
# end

## Second solution
def sum_numbers3(list)
  return 0 if list.empty?

  list[0] + sum_numbers3(list[1..-1])
end

p sum_numbers3([1, 4, 20, 0.5, -15, 120, 30, 0.14])
