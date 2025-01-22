=begin
fibonacci = [0, 1, 1, 2, 3, 5, 8, 13]

print fibonacci.count {|number | number == 1},"\n"
print fibonacci.any? {|number| number > 1},"\n"
print fibonacci.select {|number| number < 6},"\n"
print fibonacci.map {|number|number * 2}

-------
fruits_vegetable = [["banana","apple"],["mango","orange"]]
(a,b),c = fruits_vegetable
print c

----decomposition a portion-----
fruits = ["apple", "banana", "cherry", "orange", "kiwi", "melon", "mango"]
x, *middle, y, z = fruits
print x ,"\n"
print middle ,"\n"
print z
----decomposition deep-----
fruits_vegetables = [["apple", "banana", "melon"], ["carrot", "potato","yawa", "tomato"]]
(*rest,c),(a,s,w,z) = fruits_vegetables
print rest, "\n"
print c

---------Decomposing a Hash---------
fruits_inventory = {apple: 6, banana: 2, cherry: 3, squash: 4}

fruits_inventory = fruits_inventory.map do |keys, value|
  keys
end

x,*middle,y = fruits_inventory
print x, "\n"
print middle, "\n"
print y

=-----Composition an array with splat operator(*)------
fruits = ["apple", "banana", "cherry"]
more_fruits = ["orange", "kiwi", "melon", "mango"]

combine = *fruits , *more_fruits
print combine

=-----Composition an array with double splat operator(**)------

fruits_inventory = {apple: 6, banana: 2, cherry: 3}
more_fruits_inventory = {orange: 4, kiwi: 1, melon: 2, mango: 3}

combine_fruits_inventory = {**fruits_inventory, **more_fruits_inventory}
print combine_fruits_inventory.sort

 =-----non keyworded arguments------
def my_method(*arguments) = arguments

 print my_method("hello", "world",1,3,2)

 =-----keyworded arguments------
 def my_method(**keyword_arguments)= keyword_arguments
print my_method(a: 1, b: 2, c: 3)

=end

def my_method(*arguments, **keyword_arguments)
  p arguments.sum
  for (key, value) in keyword_arguments.to_a
    p key.to_s + "=" + value.to_s
  end
end

my_method(1, 2, 3, a: 1, b: 2, c: 3)
# 6
# "a = 1"
# "b = 2"
# "c = 3"

