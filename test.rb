require_relative 'Classes/safari_class.rb'

puts "type safari"

menu_choice = gets.chomp.to_s.capitalize


if  menu_choice == "Safari"
   
   poke_safari = Safari.new
   poke_safari.safari_Catch

end