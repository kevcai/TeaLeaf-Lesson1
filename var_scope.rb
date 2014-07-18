#example 1: re-assign the variable to something else 

a = 5 

3.times do |n|
  a = 3 
end 

puts a 

#example 2: call a method that doesn't mutate the caller 

a = [1,2,3,1,2,3]

def kevin(array)
  array.uniq
end 

puts kevin(a)

#example 3: call a method that mutates the caller 

a = [1,2,3,1,2,3]

def method(array)
  array.uniq!
end 

puts method(a)

#Pass by reference vs. value 

pract_array = [10,10,20,20,30,40,50]

def porsche(array)
  array.uniq 
end 

puts porsche(pract_array)
puts pract_array 

pract_array_2 = [1,2,3,4,4,3,2,1]

def bmw(array)
  array.uniq!
end 

puts bmw(pract_array_2)
puts pract_array_2