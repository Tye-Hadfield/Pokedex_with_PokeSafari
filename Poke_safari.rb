





# ***Main****

poke_Trainer_name = ""

puts "Welcome to the Pokemon Safari!"

puts "****************************************************************"

puts "What is your name trainer?"

poke_Trainer_name = gets.chomp.to_s.capitalize
puts "****************************************************************"

puts "Lets see if you can catch them all trainer #{poke_Trainer_name}!"

puts "****************************************************************"

puts "What would you like to do today?"
puts "To catch pokemon in the safari enter 'catch' or if you would like to see what you have already caught enter 'caught' "

safari_choice = gets.chomp.to_s.capitalize

if safari_choice == "Catch"

puts "You were walking through the grass and a wild  appeared!!"

end
