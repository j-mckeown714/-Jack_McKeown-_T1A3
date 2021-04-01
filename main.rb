class Menu
    def initialize
    end

    def menu_options # Gets valid menu option
        option = gets.chomp.upcase
        while option != "I" and option != "P" and option != "H" and option != "Q"
            puts "Invalid Input"
            option = gets.chomp.upcase
        end
        return option

    end

    def main_menu # Displays menu options and returns choosen option
        puts "What would you like to do:?"
        puts "(I)nstructions"
        puts "(P)lay"
        puts "(H)istory and Statisitcs"
        puts "(Q)uit"
        input = menu_options()
        return input
    end
end

class Play
    def initialize
    end

    def valid_difficulty
        option = gets.chomp.upcase
        while option != "E" and option != "M" and option != "H" and option != "V"
            puts "Invalid Input"
            option = gets.chomp.upcase
        end
        return option

    end

    def difficulty 
        puts "Choose your difficulty"
        puts "(E)asy (40% chnance of success, 5% earnings)"
        puts "(M)edium (20% chance of success, 20% earnings)"
        puts "(H)ard (10% chance of success, 40% earnings)"
        puts "(V)ery Hard (5% chance of success, 50% earnings)"
        difficulty_input = valid_difficulty()
        return difficulty_input
    end


    # def valid_play_money(bank_balance)
    #     puts "How much "
    #     gamble_money
    #     while 
    # end

    

end



bank_balance = 5000
new_menu = Menu.new
puts "Welome to Gamblers Education!"
choice = new_menu.main_menu()
while choice != "Q"

    if choice == "P"
        new_game = Play.new
        difficulty_choice = new_game.difficulty
        # puts difficulty
    end
    choice = new_menu.main_menu()
end
