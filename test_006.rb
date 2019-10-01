File.foreach('test.txt') do |line|
	puts line
	p line
	p line.chomp
	p line.split
end	

begin
File.foreach('do_not_exist.txt') do |line|
	puts line.chomp
end

rescue Exception =>e
	puts e.message
	puts "Let's pretend this didn´t happen..."
end	


if File.exist? 'test.txt'
	File.foreach('test.txt') do |line|
		puts line.chomp
	end
end		


File.open("test1.txt","w") do |file|
	file.puts "One line wrotten by Juan de Dios"
	file.puts "two line, Juan de Dios again"
	file.puts "Third line, Juan de Dios again"
	file.puts "Final line, Juan de Dios again"
end	