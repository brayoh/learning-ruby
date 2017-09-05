# Declaring variables in ruby
car = "VolksWagen"
food = "Chicken"
person = "Tom"
home = "Mombasa"

# print single line
puts "#{person} is from #{home} and drives a #{car}."
puts "His favorite meal is #{food}"

# print multiline
print <<EOF
  \n MultiLine:
  #{person} is from #{home} and drives a #{car}.
  His favorite meal is #{food}
EOF
