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
        puts "What would you like to do:?"
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


    def gamble(difficulty_choice)
        bank_balance = 5000
        puts "How much money do you want to gamble?"
        gamble_money = gets.strip.to_f
        while gamble_money > bank_balance or bank_balance == 0 
            puts "You can't gamble more then you have"
        end
        if difficulty_choice == "E"
            random_number = rand(1..100)
            if random_number <= 40
                win = gamble_money * 1.05
                bank_balance += win
                puts "You won #{win}!"
                puts "Your bank balance is now $#{bank_balance}"
                puts "Your lucky, you only had a 40% chance of winning!"
            else
                bank_balance -= gamble_money
                puts "you lost #{gamble_money}"
                puts "Your bank balance is now $#{bank_balance}"
                puts "Even on the easy level, you were disadvantaged to win with a 60% chance of losing."
            end
        elsif difficulty_choice == "M"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 20
                win = gamble_money * 1.20
                bank_balance += win
                puts "You won #{win}!"
                puts "Your bank balance is now $#{bank_balance}"
                puts "Your lucky, you only had a 20% chance of winning!"
            else
                bank_balance -= gamble_money
                puts "you lost #{gamble_money}"
                puts "Your bank balance is now $#{bank_balance}"
                puts "On the Medium level, you were disadvantaged to win with a 80% chance of losing."
            end
        elsif difficulty_choice == "H"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 10
                win = gamble_money * 1.40
                bank_balance += win
                puts "You won #{win}!"
                puts "Your bank balance is now $#{bank_balance}"
                puts "Your lucky, you only had a 10% chance of winning!"
            else
                bank_balance -= gamble_money
                puts "you lost #{gamble_money}"
                puts "Your bank balance is now $#{bank_balance}"
                puts "On the Hard level, you were disadvantaged to win with a 90% chance of losing."
            end
        elsif difficulty_choice == "V"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 5
                win = gamble_money * 1.5
                bank_balance += win
                puts "You won #{win}!"
                puts "Your bank balance is now $#{bank_balance}"
                puts "Your lucky, you only had a 5% chance of winning!"
            else
                bank_balance -= gamble_money
                puts "you lost #{gamble_money}"
                puts "Your bank balance is now $#{bank_balance}"
                puts "On the Very Hard level, you were disadvantaged to win with a 95% chance of losing."
            end
        
       

    end
    

end

class Test
    def initialize
    end

    def valid_test_input
        input = gets.strip.to_i
        while input != 0 and input != 1 and input != 2 and input != 3 and input != 4 and input != 5
            puts "Invalid input"
            input = gets.strip.to_i
        end
        return input
    end


    def test()
        score = 0
        puts "Welcome to Gamblers Education's Test."
        puts "This test is to help indicate if you need to see profestional help for your gambling issues."
        puts "Answer the question by typing a number between 0-5. 0 being you strongly don't identify and 5 being strongly identify."
        puts "Do you spend more time or money than intended?"
        input = valid_test_input()
        score += input
        puts "Do you argue with family and friends after gambling?"
        input = valid_test_input()
        score += input
        puts "After losing at gambling, having an urge to return as soon as possible to win back losses?"
        input = valid_test_input()
        score += input
        puts "Do you feel guilty or remorseful about gambling?"
        input = valid_test_input()
        score += input
        puts "Do you borrow money or sell assets to gamble?"
        input = valid_test_input()
        score += input
        puts "Do you miss work or other commitments to gamble?"
        input = valid_test_input()
        score += input
        puts "Do you hide the extent of your gambling?"
        input = valid_test_input()
        score += input
        puts 'Do you feel the need to be secretive about gambling?'
        input = valid_test_input()
        score += input
        puts 'Do your friends and family express concern about your gambling?'
        input = valid_test_input()
        score += input
        puts 'Do you resort to theft or fraud to get gambling money?'
        input = valid_test_input()
        score += input
        puts 'Do you try to control, cut back or stop gambling, without success?'
        input = valid_test_input()
        score += input
        puts 'Do you need to gamble with increasing amounts of money to get the same thrill?'
        input = valid_test_input()
        score += input

        if score <= 5
            puts "Not critical. See an professtional if gambing abuse symtons worsen"
            puts ""
        elsif score > 6 and score < 15
            puts "Your showing symtons of gambling abuse. See attention from a gambling support professtional"
            puts ""
        else
            puts "Your showing strong symtoms of gambling addiction. See attention from a gambling support professtional"
            puts ""
            
        end
    
    end


end



new_menu = Menu.new
puts "Welome to Gamblers Education!"
choice = new_menu.main_menu()
while choice != "Q"
    if choice == "P"
        new_game = Play.new
        difficulty_choice = new_game.difficulty
        gamble = new_game.gamble(difficulty_choice)
    elsif choice == "I"
        new_menu.opening_message()
    elsif choice == "T"
        new_test = Test.new
        new_test.test()
    elsif choice == "D"
        disclaimer = new_menu.disclaimer()
    # elsif choice == "H"
        # history = new_menu.history
    
    end
    choice = new_menu.main_menu()
    
end
end
