# frozen_string_literal: true

# Consigne :
# Écrire une fonction qui calcule les 100 premiers nombres de Fibonacci.
# Fibonacci commence avec 0 et 1 et chaque nombre suivant est calculé comme
# étant la somme des deux précédents.
# Le début de la liste sera donc: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, …].

require 'pry'

# FIRST METHOD
def fibonacci(n)
  # arr = [1, 2]

  # for i in arr
  #   if i < n
  #     arr.push(arr[i - 2] + arr[i - 1])
  #   end
  # end

  # if n <= 1
  #   return n
  # else
  #   fibonacci(n - 1) + fibonacci(n - 2)
  # end

  # # refacto
  # n <= 1 ? n : (fibonacci(n - 1) + fibonacci(n - 2))

  # # refacto x2 ==> don't work
  n.times.inject([0, 1]) do |_init, obj|
    obj << obj[-2] + obj[-1]
  end

  # # refacto x3
  n.times.each_with_object([0, 1]) do |_init, obj|
    obj << obj[-2] + obj[-1]
  end
end

p fibonacci(10)
