require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  c1 = 0 
  while c1 < nds.length do
    pp nds[c1][:name] 
    #gross_for_director(nds[c1])
    c1 += 1 
  end 
  
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  cntr2 = 0
  sum_of_wwg = 0
  while cntr2 < director_data[:movies].length do
    sum_of_wwg = sum_of_wwg + director_data[:movies][cntr2][:worldwide_gross]
    cntr2 += 1 
  end 
  pp sum_of_wwg
end
