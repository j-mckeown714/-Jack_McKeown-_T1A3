require('colorize')
require ('cli-colorize')
require ('optics')
require_relative 'classes/menu'
require_relative 'classes/play'
require_relative 'classes/test'


new_menu = Menu.new
str = 'Welome '.bright.red.swap  + 'to'.bright.red.swap + ' Gamblers'.bright.red.swap  + ' Education!'.bright.red.swap
puts str
choice = new_menu.main_menu()
while choice != "Q"
    if choice == "P"
        new_game = Play.new
        bank = new_game.money()
        difficulty_choice = new_game.difficulty
        gamble = new_game.gamble(difficulty_choice)
    elsif choice == "I"
        new_menu.opening_message()
    elsif choice == "T"
        new_test = Test.new
        new_test.test()
    elsif choice == "D"
        disclaimer = new_menu.disclaimer()

        history = new_menu.history
    
    end
    choice = new_menu.main_menu()
    
end

