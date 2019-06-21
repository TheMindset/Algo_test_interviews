# frozen_string_literal: true

# Consigne :
# Écrire une fonction qui calcule les 100 premiers nombres de Fibonacci.
# Fibonacci commence avec 0 et 1 et chaque nombre suivant est calculé comme
# étant la somme des deux précédents.
# Le début de la liste sera donc: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, …].

require 'pry'

# FIRST METHOD
def fibonacci(n)
  n.times.each_with_object([0, 1]) do |_init, obj|
    obj << obj[-2] + obj[-1]
  end
end

p fibonacci(10)
