1.times{puts "Hello World"}

2.times do |index|
	if index >0
		puts index
	end
end

2.times {|index| puts index if index>=0}

def two_times_implicit
	return "No block" unless block_given?
	yield
	yield
end 

puts two_times_implicit{print "Hello Juan de Dios"}
puts two_times_implicit

def two_times_explicit(&i_am_a_block)
	return "No block" if i_am_a_block.nil?
	i_am_a_block.call
	i_am_a_block.call
end

puts two_times_explicit
two_times_explicit{puts "Hello"}	
