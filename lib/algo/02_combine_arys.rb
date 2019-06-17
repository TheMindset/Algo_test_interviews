# Consigne :
# Écrire une fonction qui combine deux listes en une seule en alternant les éléments.
# Par exemple, combine([:a, :b, :c], [1, 2, 3]) doit renvoyer [:a, 1, :b, 2, :c, 3].

require 'pry'

def combine_arys(ary,ary2)
  ary.zip(ary2).flatten
  # binding.pry
end

p combine_arys([:a, :b, :c], [1, 2, 3])
