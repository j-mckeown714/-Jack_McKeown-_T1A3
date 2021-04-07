require('colorize')
require ('cli-colorize')
require ('optics')

class Menu
    def initialize
    end

    def menu_options # Gets valid menu option
        option = gets.chomp.upcase
        while option != "O" and option != "P" and option != "Q" and option != "T" and option != "D"
            puts "Invalid Input"
            option = gets.chomp.upcase
        end
        return option

    end

    def main_menu # Displays menu options and returns choosen option
        puts Optics.italic
        puts "What would you like to do:?"
        puts Optics.reset
        puts "(O)pening Message"
        puts "(P)lay"
        puts "(T)est"
        puts "(D)isclaimer"
        puts "(Q)uit"
        input = menu_options()
        return input
    end

    def opening_message 
        puts "Welcome to Gamblers Education! This app main purpose is to educate gamblers with their probelem."
        puts "The app contains a test which can help you idenity if you should see an addiction specialist based on your results."
        puts "This app also contains a gambling simutator which you can view the statuistics and probability behind your punts."
        puts ""
    end

    def disclaimer
        puts "This app and all its content should not be taken for gambling addiction advise. See an addiction treatment professtional if you feel like you may be addicted to gambling. "
        puts ""
    end
end

