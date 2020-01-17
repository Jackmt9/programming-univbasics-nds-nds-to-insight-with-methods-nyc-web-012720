$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  count = 0
  worldwide_gross_total = 0
  while director_data[:movies].length > count
    worldwide_gross_total += director_data[:movies][count][:worldwide_gross]
    count += 1
  end
  return worldwide_gross_total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  name = []
  count1 = 0
  while nds.length > count1 
    name << nds[count1][:name]
    count1 += 1
  end
  # puts name
  total_money= []
  count2 = 0
  count3 = 0
  while nds[count2].length > count2
    while nds[count2][:movies].length > count3
      total += nds[count2][:movies][count3][:worldwide_gross]
      count3 += 1
    end
    count2 += 1
    total_money << total
  end
  count4 = 0
  while name.length > count4
    result[name[count4]] = total[count4]
  end
  return result
  nil
end
