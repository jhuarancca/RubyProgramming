for i in 0..10
	puts i*2
end	


def simple
	puts "no parens"
end

def simple1()
	puts "yes parens"
end		

simple1
simple1()

def add(one,two)
	one*two
end

def divide(one,two)
	return "I don´t think so" if two==0
	one / two
end	

puts add(2,2)
puts divide(2,0)
puts divide(12,5)


def can_divide_by?(number)
	return false if number.zero?
	true
end

puts can_divide_by? 3
puts can_divide_by?0

def factorial(n)
	n==0?1:n*factorial(n -1)
end	

def factorial_with_default(n=5)
	n==0?1:n*factorial_with_default(n-1)
end

puts factorial 5
puts factorial_with_default
puts factorial_with_default(3)

def max(one_param, *numbers, another)
	numbers.max
end

puts max("something",7,32,-4,"more")	