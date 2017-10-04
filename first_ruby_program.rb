instruction_staff = ["Casey", "Hannah", "Jisie"]

for staff in instruction_staff
	# puts staff
	if staff == "Casey"
		fav_animal = "Pangolin"
	elsif staff == "Hannah"
		fav_animal = "Dog"
	else
		fav_animal = "Penguin"
	end

	puts "#{staff}'s favorite animal is a #{fav_animal}."
end

# Casey's favorite animal is a Pangolin.
# Hannah's favorite animal is a Dog.
# Jisie's favorite animal is a Penguin.

driving_license_num = 12345
puts driving_license_num
# driving_license_num = driving_license_num.to_f
puts "The integer #{driving_license_num} as a float: #{driving_license_num.to_f}"
puts driving_license_num.class
puts driving_license_num.is_a? Integer
puts driving_license_num.is_a? String

# 12345
# The integer 12345 as a float: 12345.0
# Integer
# true
# false

social_sec_num = 987.654
puts social_sec_num
puts social_sec_num.class
puts social_sec_num.to_i

# 987.654
# Float
# 987

ssn_str = social_sec_num.to_s
puts ssn_str.is_a? String

# true

ssn_str = "social security number"
puts ssn_str.upcase!
puts ssn_str
puts ssn_str.downcase
puts ssn_str.capitalize

# SOCIAL SECURITY NUMBER
# SOCIAL SECURITY NUMBER
# social security number
# Social security number

hello = "Hello "
puts hello
hello << "my name is "
puts hello
dan = "Dan"
my_hobby = " and I like to eat Cool Whip from the tub while being consumed by anxiety."
hello.concat(dan, my_hobby)
puts hello

# Hello
# Hello my name is
# Hello my name is Dan and I like to eat Cool Whip from the tub while being consumed by anxiety.

puts :jisie
puts :jisie.object_id
puts "Object id of :jisie #{:jisie.object_id}"
str1 = "jisie"
puts "Object ID of str1 #{str1.object_id}"
str2 = "jisie"
puts "Object ID of str2 #{str2.object_id}"

# 917148
# Object id of :jisie 917148
# Object ID of str1 70246413659820
# Object ID of str2 70246413659740

socks = Hash.new(0)
puts socks
puts socks[:none]
socks = {:polka_dot => 3, :striped => 5}
socks.default = 0
puts socks
puts socks[:none]
puts socks[:polka_dot]

# {}
# 0
# {:polka_dot=>3, :striped=>5}
# 0
# 3

ties = {}
puts ties
puts "Is the ties hash empty? #{ties.empty?}"
ties = {"bow ties" => 4, "cravat" => 15}
puts ties
puts ties["bow ties"]

# {}
# Is the ties hash empty? true
# {"bow ties"=>4, "cravat"=>15}
# 4

pants = {parachute: "cool", skinny: "eww"}
puts "PANTS #{pants}"
pants[:parachute] = "not cool"
puts pants[:parachute]
puts "Is the pants hash empty? #{pants.empty?}"
puts pants.keys
puts "Does pants have the key parachut? #{pants.has_key?(:parachute)}"
puts "Does pants have the key banana? #{pants.has_key?(:banana)}"
puts "Does pants have value :cool? #{pants.has_value?("cool")}"
puts "Does pants have value :banana? #{pants.has_value?("banana")}"
pants.delete(:skinny)
puts pants

# PANTS {:parachute=>"cool", :skinny=>"eww"}
# not cool
# Is the pants hash empty? false
# parachute
# skinny
# Does pants have the key parachut? true
# Does pants have the key banana? false
# Does pants have value :cool? false
# Does pants have value :banana? false
# {:parachute=>"not cool"}

pants = {
    parachute: :cool,
    skinny: "ewww" }
puts pants[:parachute]
puts "Object id of pants: #{pants.object_id}"
puts "Object id of pants[:parachute]: #{pants[:parachute].object_id}"
for i in pants.keys
  puts i.object_id
end
shirts = {
  parachute: :cool,
  skinny: "ewww" }
puts "Object id of shirts: #{shirts.object_id}"
puts "Object id of shirts[:parachute]: #{shirts[:parachute].object_id}"
for i in shirts.keys
  puts i.object_id
end

# cool
# Object id of pants: 70279544447760
# Object id of pants[:parachute]: 920028
# 919068
# 919388
# Object id of shirts: 70279544447460
# Object id of shirts[:parachute]: 920028
# 919068
# 919388

puts "Original hash: #{shirts} and its object id: #{shirts.object_id}"
# Original hash: {:parachute=>:cool, :skinny=>"ewww"} and its object id: 70169150501340
inv_shirts = shirts.invert
puts "Inverted hash #{inv_shirts} and its object ID is #{inv_shirts.object_id}"
# Inverted hash {:cool=>:parachute, "ewww"=>:skinny} and its object ID is 70137340897480
puts "The key of eww #{shirts.key('ewww')}"
# The key of eww skinny
puts "The key of cool, a symbol is #{shirts.key(:cool)}"
# The key of cool, a symbol is parachute
puts "The hash #{shirts} has a length of #{shirts.length}"
# The hash {:parachute=>:cool, :skinny=>"ewww"} has a length of 2
puts shirts.length
# 2
puts str1.length
# 5
puts instruction_staff.length
# 3
pants_ties = pants.merge(ties)
puts "Merged hashes #{pants_ties}"
# Merged hashes {:parachute=>:cool, :skinny=>"ewww", "bow ties"=>4, "cravat"=>15}
