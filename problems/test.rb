fibonacci = [0, 1, 1, 2, 3, 5, 8, 13]

print fibonacci.count {|number | number == 1},"\n"
print fibonacci.any? {|number| number > 1},"\n"
print fibonacci.select {|number| number < 6},"\n"
print fibonacci.map {|number|number * 2}