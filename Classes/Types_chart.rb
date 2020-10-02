 
 
 require 'csv'
 require 'smarter_csv'
 
 #This is the types and what their Strength and weakness are (Move to class when got time)
            
class PokemonTypes
       

        def initialize(name,attack_super_effective,attack_not_super_effective,defence_not_very_effective,defence_super_very_effective, attack_no_effect = false, defense_no_effect = false)
            @name = name
            @attack_super_effective = attack_super_effective
            @attack_not_super_effective = attack_not_super_effective
            @defence_not_very_effective = defence_not_very_effective
            @defence_super_very_effective = defence_super_very_effective
            @attack_no_effect = attack_no_effect
            @defense_no_effect = defense_no_effect
            @types = []

        end

        def output_effective_against
            puts "#{@name} moves are super-effective against: #{@attack_super_effective}"
        end

        def output_not_effective_against
            puts "#{@name} moves are not very effective against: #{@attack_not_super_effective}"
        end

        def output_defence_not_very_effective
            puts "These types are not very effective against #{@name} Pokémon: #{@defence_not_very_effective}"
        end

        def output_defence_super_very_effective
            puts "These types are super-effective against #{@name} Pokémon: #{@defence_super_very_effective}"
        end

        def output_attack_no_effect
            if @attack_no_effect == false
                return
            else
                puts "#{@name} moves have no effect on: #{@attack_no_effect}"
            end
        end

        def output_defense_no_effect
            if @defense_no_effect == false
                return
            else
            puts "These types have no effect on #{@name} Pokémon: #{@defense_no_effect}"
            end
        end

        def output_all
    
            output_effective_against
            output_not_effective_against
            output_defence_not_very_effective
            output_defence_super_very_effective
            output_attack_no_effect
            output_defense_no_effect

        end
    
    end
    
    

    # CSV.open("test.csv", "ab") do |csv|

    # csv << ["Grass","WATER GROUND ROCK","FIRE GRASS POISON FLYING BUG DRAGON STEEL","WATER ELECTRIC GRASS GROUND","FIRE ICE POISON FLYING BUG"]
    # csv << ["Poison", "GRASS FAIRY","POISON GROUND ROCK GHOST","GRASS FIGHTING POISON BUG FAIRY","GROUND PSYCHIC","STEEL"]
    # csv << ["Dragon","DRAGON","STEEL","FIRE WATER ELECTRIC GRASS","ICE DRAGON FAIRY","FAIRY"]
    # csv << ["Ghost","PSYCHIC GHOST","DARK","POISON BUG","GHOST DARK","NORMAL","NORMAL,FIGHTING"]
    # csv << ["Ice","GRASS GROUND FLYING DRAGON","FIRE WATER ICE STEEL","ICE","FIRE FIGHTING ROCK STEEL"]
    # csv << ["Steel","ICE ROCK FAIRY","FIRE WATER ELECTRIC STEEL","NORMAL GRASS ICE FLYING PSYCHIC BUG ROCK DRAGON STEEL FAIRY","FIRE FIGHTING GROUND",false,"POISON"]
    # csv << ["Rock","FIRE ICE FLYING BUG","FIGHTING GROUND STEEL","NORMAL FIRE POISON FLYING","WATER GRASS FIGHTING GROUND STEEL"]
    # csv << ["Fighting","NORMAL ICE ROCK DARK STEEL","POISON FLYING PSYCHIC BUG FAIRY","BUG ROCK DARK","FLYING PSYCHIC FAIRY","GHOST"]
    # csv << ["Psychic","FIGHTING POISON","PSYCHIC STEEL","FIGHTING PSYCHIC","BUG GHOST DARK","DARK"]
    # csv << ["Fairy","FIGHTING DRAGON DARK","FIRE POISON STEEL","FIGHTING BUG DARK","POISON STEEL",false,"DRAGON"]
    # csv << ["Ground","FIRE ELECTRIC POISON ROCK STEEL","GRASS BUG","POISON ROCK","WATER GRASS ICE"]
    # csv << ["Bug","GRASS PSYCHIC DARK","FIRE FIGHTING POISON FLYING GHOST STEEL FAIRY","GRASS FIGHTING GROUND","FIRE FLYING ROCK"]
    # csv << ["Water","FIRE GROUND ROCK","WATER GRASS DRAGON","FIRE WATER ICE STEEL","ELECTRIC GRASS"]
    # csv << ["Flying","GRASS FIGHTING BUG","ELECTRIC ROCK STEEL","GRASS FIGHTING BUG","ELECTRIC ICE ROCK",false,"GROUND"]
    # csv << ["Fire","GRASS ICE BUG STEEL","FIRE WATER ROCK DRAGON","FIRE GRASS ICE BUG STEEL FAIRY","WATER GROUND ROCK"]
    # csv << ["Normal","ROCK STEEL","GHOST","GHOST","FIGHTING"]

    # end
    