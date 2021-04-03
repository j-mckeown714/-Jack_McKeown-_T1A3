class Menu
    def initialize
    end

    def menu_options # Gets valid menu option
        option = gets.chomp.upcase
        while option != "I" and option != "P" and option != "Q" and option != "T"
            puts "Invalid Input"
            option = gets.chomp.upcase
        end
        return option

    end

    def main_menu # Displays menu options and returns choosen option
        puts "What would you like to do:?"
        puts "(I)nstructions"
        puts "(P)lay"
        puts "(T)est"
        puts "(Q)uit"
        input = menu_options()
        return input
    end

    def instructions 
        puts "Welcome to Gamblers Education! This app main purpose is to educate gamblers with their probelem."
        puts "The app contains a test which can help you idenity if you should see an addiction specialist based on your results."
        puts "This app also contains a gambling simutator which you can view the statuistics and probability behind your punts."
        puts ""
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
        #if difficulty_input == "E"e

    end

    def valid_play_money(bank_balance)
        puts "How much money do you want to gamble?"
        gamble_money = gets.strip.to_f
        while gamble_money > bank_balance or bank_balance == 0 
            puts "You can't gamble more then you have"
        end
        return gamble_money
    end

    def gamble(bank_balance, ga)
       

    end
    

end

class Test
    def initialize
    end

    def test
        score = 0
        puts "Welcome to Gamblers Education's Test."
        puts "This test is to help indicate if you need to see profestional help for your gambling issues."
        puts "Answer the question by typing a number between 0-5. 0 being you strongly don't identify and 5 being strongly identify."
        puts "Do you spend more time or money than intended?"
        input = gets.strip.to_i
        score += input
        puts score
        puts "Do you argue with family and friends after gambling?"
        input = gets.strip.to_i
        score += input
        puts score
        puts "After losing at gambling, having an urge to return as soon as possible to win back losses?"
        input = gets.strip.to_i
        score += input
        puts "Do you feel guilty or remorseful about gambling?"
        input = gets.strip.to_i
        score += input
        puts "Do you borrow money or sell assets to gamble?"
        input = gets.strip.to_i
        score += input
        puts "Do you miss work or other commitments to gamble?"
        input = gets.strip.to_i
        score += input
        puts "Do you hide the extent of your gambling?"
        input = gets.strip.to_i
        score += input
        puts score
        if score <= 5
            puts "Not critical. See an professtional if gambing abuse symtons worsen"
        elsif score > 6 and score < 15
            puts "Your showing symtons of gambling abuse. See attention from a gambling support professtional"
        else
            puts "Your showing strong symtoms of gambling addiction. See attention from a gambling support professtional"
            
        end
    
    end


end


bank_balance = 5000
new_menu = Menu.new
puts "Welome to Gamblers Education!"
choice = new_menu.main_menu()
while choice != "Q"
    if choice == "P"
        new_game = Play.new
        difficulty_choice = new_game.difficulty
        gamble_money = new_game.valid_play_money(bank_balance)
        if difficulty_choice == "E"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 40
                win = gamble_money * 1.05
                bank_balance += win
                puts bank_balance
            else
                bank_balance -= gamble_money
                puts bank_balance
            end
        elsif difficulty_choice == "M"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 20
                win = gamble_money * 1.20
                bank_balance += win
                puts bank_balance
            else
                bank_balance -= gamble_money
                puts bank_balance
            end
        elsif difficulty_choice == "H"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 10
                win = gamble_money * 1.40
                bank_balance += win
                puts bank_balance
            else
                bank_balance -= gamble_money
                puts bank_balance
            end
        elsif difficulty_choice == "V"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 5
                win = gamble_money * 1.5
                bank_balance += win
                puts bank_balance
            else
                bank_balance -= gamble_money
                puts bank_balance
            end
        end
    elsif choice == "I"
        new_menu.instructions()
    elsif choice == "T"
        new_test = Test.new
        new_test.test()
    
    end
    choice = new_menu.main_menu()
    
    
end
