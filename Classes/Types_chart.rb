 #This is the types and what their Strength and weakness are (Move to class when got time)
            
class PokemonTypes

        attr_reader :grass, :poison, :dragon, :ghost, :ice, :steel, :rock, :fighting, :psychic, :fairy, :ground, :electric, :normal, :bug, :water, :flying, :fire


        def Initialize
        @grass = grass
        @poison = poison
        @dragon = dragon
        @ghost = ghost
        @ice = ice
        @steel = steel
        @rock = rock
        @fighting = fighting
        @psychic = psychic
        @fairy = fairy
        @ground = ground
        @electric = electric
        @normal = normal
        @bug = bug 
        @water = water
        @flying = flying
        @fire = fire
        end

        def grass_Type
                grass = {
                        attack_super_effective: "Grass moves are super-effective against: WATER GROUND ROCK",
                        attack_not_super_effective: "Grass moves are not very effective against: FIRE GRASS POISON FLYING BUG DRAGON STEEL",
                        defence_not_very_effective: "These types are not very effective against Grass Pokémon: WATER ELECTRIC GRASS GROUND",
                        defence_super_very_effective: "These types are super-effective against Grass Pokémon: FIRE ICE POISON FLYING BUG"
                        }

                grass.each do |key, values|
                        puts values
                end
        end

        def poison_Type
                poison = {
                        attack_super_effective: "Poison moves are super-effective against : GRASS FAIRY",
                        attack_not_super_effective: "Poison moves are not very effective against : POISON GROUND ROCK GHOST",
                        attack_no_effect: "Poison moves have no effect on : STEEL",
                        defence_not_very_effective: "These types are not very Effective against Poison Pokémon : GRASS FIGHTING POISON BUG FAIRY",
                        defence_super_very_effective: "These types are super-effective against Poison Pokémon : GROUND PSYCHIC"
                        }

                poison.each do |key, values|
                        puts values
                end
        end

        
        def dragon_Type
                dragon = {
                        attack_super_effective: "Dragon moves are super-effective against : DRAGON",
                        attack_not_super_effective: "Dragon moves are not very effective against : STEEL",
                        attack_no_effect: "Dragon moves have no effect on : FAIRY",
                        defence_not_very_effective: "These types are not very Effective against Dragon Pokémon : FIRE WATER ELECTRIC GRASS",
                        defence_super_very_effective: "These types are super-effective against Dragon Pokémon : ICE DRAGON FAIRY"
                        }
                
                dragon.each do |key, values|
                        puts values
                end
        end

        def ghost_Type
                ghost = {
                        attack_super_effective: "Ghost moves are super-effective against : PSYCHIC GHOST",
                        attack_not_super_effective: "Ghost moves are not very effective against : DARK",
                        attack_no_effect: "Ghost moves have no effect on : NORMAL",
                        attack_no_effect_aginst: "These types have no effect on Ghost Pokémon: NORMAL FIGHTING",
                        defence_not_very_effective: "These types are not very Effective against Ghost Pokémon : POISON BUG",
                        defence_super_very_effective: "These types are super-effective against Ghost Pokémon : GHOST DARK"
                        }

                ghost.each do |key, values|
                        puts values
                end
        end

        def ice_Type
                ice = {
                        attack_super_effective: "Ice moves are super-effective against: GRASS GROUND FLYING DRAGON",
                        attack_not_super_effective: "Ice moves are not very effective against: FIRE WATER ICE STEEL",
                        defence_not_very_effective: "These types are not very effective against Ice Pokémon: ICE",
                        defence_super_very_effective: "These types are super-effective against Ice Pokémon: FIRE FIGHTING ROCK STEEL" 
                        }

                ice.each do |key, values|
                        puts values
                end
        end

        def steel_Type
                steel = {
                        attack_super_effective: "Steel moves are super-effective against : ICE ROCK FAIRY",
                        attack_not_super_effective: "Steel moves are not very effective against : FIRE WATER ELECTRIC STEEL",
                        attack_no_effect_aginst: "These types have no effect on Steel Pokémon: POISON",
                        defence_not_very_effective: "These types are not very Effective against Steel Pokémon : NORMAL GRASS ICE FLYING PSYCHIC BUG ROCK DRAGON STEEL FAIRY",
                        defence_super_very_effective: "These types are super-effective against Steel Pokémon : FIRE FIGHTING GROUND"
                        }
                
                steel.each do |key, values|
                        puts values
                end
        end

        def rock_Type
                rock = {
                        attack_super_effective: "Rock moves are super-effective against: FIRE ICE FLYING BUG",
                        attack_not_super_effective: "Rock moves are not very effective against: FIGHTING GROUND STEEL",
                        defence_not_very_effective: "These types are not very effective against Rock Pokémon: NORMAL FIRE POISON FLYING",
                        defence_super_very_effective: "These types are super-effective against Rock Pokémon: WATER GRASS FIGHTING GROUND STEEL" 
                        }

                rock.each do |key, values|
                        puts values
                end
        end

        def fighting_Type
                fighting = {
                        attack_super_effective: "Fighting moves are super-effective against : NORMAL ICE ROCK DARK STEEL",
                        attack_not_super_effective: "Fighting moves are not very effective against : POISON FLYING PSYCHIC BUG FAIRY",
                        attack_no_effect: "Fighting moves have no effect on : GHOST",
                        defence_not_very_effective: "These types are not very Effective against Fighting Pokémon : BUG ROCK DARK",
                        defence_super_very_effective: "These types are super-effective against Fighting Pokémon : FLYING PSYCHIC FAIRY"
                        }

                fighting.each do |key, values|
                        puts values
                end
        end

        def psychic_Type
                psychic = {
                        attack_super_effective: "Psychic moves are super-effective against : FIGHTING POISON",
                        attack_not_super_effective: "Psychic moves are not very effective against : PSYCHIC STEEL",
                        attack_no_effect: "Psychic moves have no effect on : DARK",
                        defence_not_very_effective: "These types are not very Effective against Psychic Pokémon : FIGHTING PSYCHIC",
                        defence_super_very_effective: "These types are super-effective against Psychic Pokémon : BUG GHOST DARK"
                        }

                psychic.each do |key, values|
                        puts values
                end
        end

        def fairy_Type
                fairy = {
                        attack_super_effective: "Fairy moves are super-effective against : FIGHTING DRAGON DARK",
                        attack_not_super_effective: "Fairy moves are not very effective against : FIRE POISON STEEL",
                        attack_no_effect_aginst: "These types have no effect on Fairy Pokémon: DRAGON",
                        defence_not_very_effective: "These types are not very Effective against Fairy Pokémon : FIGHTING BUG DARK",
                        defence_super_very_effective: "These types are super-effective against Fairy Pokémon : POISON STEEL"
                        }

                fairy.each do |key, values|
                        puts values
                end
        end

        def ground_Type
                ground = {
                        attack_super_effective: "Ground moves are super-effective against : FIRE ELECTRIC POISON ROCK STEEL",
                        attack_not_super_effective: "Ground moves are not very effective against : GRASS BUG",
                        attack_no_effect: "Ground moves have no effect on : FLYING",
                        attack_no_effect_aginst: "These types have no effect on Ground Pokémon: ELECTRIC",
                        defence_not_very_effective: "These types are not very Effective against Ground Pokémon : POISON ROCK",
                        defence_super_very_effective: "These types are super-effective against Ground Pokémon : WATER GRASS ICE"
                        }

                ground.each do |key, values|
                        puts values
                end
        end

        def electric_Type
                electric = {
                        attack_super_effective: "Electric moves are super-effective against : WATER FLYING",
                        attack_not_super_effective: "Electric moves are not very effective against : ELECTRIC GRASS DRAGON",
                        attack_no_effect: "Electric moves have no effect on : GROUND",
                        defence_not_very_effective: "These types are not very Effective against Electric Pokémon : ELECTRIC FLYING STEEL",
                        defence_super_very_effective: "These types are super-effective against Electric Pokémon : GROUND"
                        }
                electric.each do |key, values|
                        puts values
                end
        end

        def normal_Type
                normal = {
                        attack_super_effective: "Normal moves are super-effective against: ROCK STEEL",
                        attack_no_effect: "Normal moves have no effect on : GHOST",
                        attack_no_effect_aginst: "These types have no effect on Normal Pokémon: GHOST",
                        defence_super_very_effective: "These types are super-effective against Normal Pokémon: FIGHTING"
                        }

                normal.each do |key, values|
                        puts values
                end
        end

        def bug_Type
                bug = {
                        attack_super_effective: "Bug moves are super-effective against : GRASS PSYCHIC DARK",
                        attack_not_super_effective: "Bug moves are not very effective against : FIRE FIGHTING POISON FLYING GHOST STEEL FAIRY",
                        defence_not_very_effective: "These types are not very Effective against Bug Pokémon : GRASS FIGHTING GROUND",
                        defence_super_very_effective: "These types are super-effective against Bug Pokémon : FIRE FLYING ROCK"
                        }

                bug.each do |key, values|
                        puts values
                end
        end

        def water_Type
                water = {
                        attack_super_effective: "Water moves are super-effective against : FIRE GROUND ROCK",
                        attack_not_super_effective: "Water moves are not very effective against : WATER GRASS DRAGON",
                        defence_not_very_effective: "These types are not very Effective against Water Pokémon : FIRE WATER ICE STEEL",
                        defence_super_very_effective: "These types are super-effective against Water Pokémon : ELECTRIC GRASS"
                        }

                water.each do |key, values|
                        puts values
                end
        end

        def flying_Type
                flying = {
                        attack_super_effective: "Flying moves are super-effective against : GRASS FIGHTING BUG",
                        attack_not_super_effective: "Flying moves are not very effective against : ELECTRIC ROCK STEEL",
                        attack_no_effect_aginst: "These types have no effect on Flying Pokémon: GROUND",
                        defence_not_very_effective: "These types are not very Effective against Flying Pokémon : GRASS FIGHTING BUG",
                        defence_super_very_effective: "These types are super-effective against Flying Pokémon : ELECTRIC ICE ROCK"
                        }

                flying.each do |key, values|
                        puts values
                end
end

        def fire_Type
                fire = {
                        attack_super_effective: "Fire moves are super-effective against : GRASS ICE BUG STEEL",
                        attack_not_super_effective: "Fire moves are not very effective against : FIRE WATER ROCK DRAGON",
                        defence_not_very_effective: "These types are not very Effective against Fire Pokémon : FIRE GRASS ICE BUG STEEL FAIRY",
                        defence_super_very_effective: "These types are super-effective against Fire Pokémon : WATER GROUND ROCK"
                        }

                fire.each do |key, values|
                        puts values
                end
        end
end

pokemon = PokemonTypes.new
pokemon.ground_Type
