array=(1..10000).to_a.sample(50)

new_array=array.select{|elemento| elemento%3==0 and elemento>5000}

p new_array.sort.reverse
