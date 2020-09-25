require 'csv'
require 'smarter_csv'



# class PokeDex

#     def Initialize
#         @pokemondb = pokemondb

#     end


    def callPokemonTest
    
        data = SmarterCSV.process('pokemon.csv',{header_transformations:[:none]})

        # p data

        puts "Choose number between 1-151"

        user_choice = gets.chomp.to_i

        select_pokemon = data.select {|hash| hash[:pokedexnumber] == user_choice }[0]

        p select_pokemon



        # user_choice = user_choice - 1

        # puts data[user_choice]



        # data.each do |pokemon|
        #     if pokemon[:name] =="Mew"
        #         puts pokemon[20]
        #     end
        # end

        
    end

# end

callPokemonTest
