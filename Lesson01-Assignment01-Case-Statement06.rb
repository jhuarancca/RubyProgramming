family_tree_19={oldest:"Gisela",older:"Santos",younger:"Luis"}
family_tree_19[:youngest]="Oscar"

p family_tree_19

def adjust_colors(props={foreground:"red",background:"white"})
	puts "Foregroud: #{props[:foreground]}" if props[:foreground]
	puts "Background:#{props[:background]}" if props[:background]
end

adjust_colors

adjust_colors({:foreground=>"green"})
adjust_colors background:"yella"
adjust_colors :background => "magenta"	

a_hash={:one=>"one"}
puts a_hash

puts ({:one=>"one"})

puts one:"one"