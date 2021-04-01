class Menu
    def initialize
    end

    def menu_options
        option = gets.chomp.upcase
        while option != "I" 
            puts "Invalid Input"
            option = gets.chomp.upcase
        end
        return option

    end

    def main_menu
        puts "What would you like to do:?"
        puts "(I)nstructions"
        puts "(P)lay"
        puts "(H)istory and Statisitcs"
        puts "(Q)"
        input = menu_options()
        return input
    end

   

end

game = Menu.new
puts "Welome to Gamblers Education!"
game.main_menu()
