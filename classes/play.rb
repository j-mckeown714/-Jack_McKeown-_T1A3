require('colorize')
require ('cli-colorize')
require ('optics')

class Play
    def initialize
        @history = []
        @bank_balance = nil
    end

    def valid_difficulty
        option = gets.chomp.upcase
        while option != "E" and option != "M" and option != "H" and option != "V" 
            puts "Invalid Input"
            option = gets.chomp.upcase
        end
        return option
    end

    def money
        puts "How much money do you want in your gambling account?"
        @bank_balance = gets.chomp.to_f
        return @bank_balance
    end



    def difficulty 
        puts "Choose your difficulty"
        puts "(E)asy".cyan
        puts "(M)edium".green
        puts "(H)ard".yellow
        puts "(V)ery Hard".red
        difficulty_input = valid_difficulty()
        return difficulty_input


    end

    def past_plays
        @history.each do |bet| 
            puts "Bet: #{bet[:bet]}, Bank Balance: #{bet[:balance]}"
        end
    end


    def keep_playing
        puts "Would you like to keep playing, (Y) or (N)? "
        input = gets.chomp.upcase
        if input == "Y"
            difficulty_choice = difficulty()
            gamble = gamble(difficulty_choice)
        else
            puts "Betting History:"
            past_plays()
            # past_plays()
        end
    end

    def gamble(difficulty_choice)
        
        puts "How much money do you want to gamble?"
        gamble_money = gets.strip.to_f
        while gamble_money > @bank_balance or @bank_balance == 0 
            puts "You can't gamble more then you have"
        end
        if difficulty_choice == "E"
            random_number = rand(1..100)
            if random_number <= 40
                win = gamble_money * 1.05
                @bank_balance += win
                puts "You won #{win}!"
                puts "Your bank balance is now $#{@bank_balance}"
                puts "Your lucky, you only had a 40% chance of winning!"
                @history.push(bet: gamble_money, balance: @bank_balance)
                puts @history
                play = keep_playing()
                @history.each {|bet| puts "#{bet[:gamble_money]} #{bet[:@bank_balance]}"}
            else
                @bank_balance -= gamble_money
                puts "you lost #{gamble_money}"
                puts "Your bank balance is now $#{@bank_balance}"
                puts "Even on the easy level, you were disadvantaged to win with a 60% chance of losing."
                @history.push(bet: gamble_money, balance: @bank_balance)
                puts @history
                play = keep_playing()
                @history.each {|bet| puts "#{bet[:gamble_money]} #{bet[:@bank_balance]}"}
            end
        elsif difficulty_choice == "M"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 20
                win = gamble_money * 1.20
                @bank_balance += win
                puts "You won #{win}!"
                puts "Your bank balance is now $#{@bank_balance}"
                puts "Your lucky, you only had a 20% chance of winning!"
            else
                @bank_balance -= gamble_money
                puts "you lost #{gamble_money}"
                puts "Your bank balance is now $#{@bank_balance}"
                puts "On the Medium level, you were disadvantaged to win with a 80% chance of losing."
            end
        elsif difficulty_choice == "H"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 10
                win = gamble_money * 1.40
                @bank_balance += win
                puts "You won #{win}!"
                puts "Your bank balance is now $#{@bank_balance}"
                puts "Your lucky, you only had a 10% chance of winning!"
            else
                @bank_balance -= gamble_money
                puts "you lost #{gamble_money}"
                puts "Your bank balance is now $#{@bank_balance}"
                puts "On the Hard level, you were disadvantaged to win with a 90% chance of losing."
            end
        elsif difficulty_choice == "V"
            random_number = rand(1..100)
            puts random_number
            if random_number <= 5
                win = gamble_money * 1.5
                @bank_balance += win
                puts "You won #{win}!"
                puts "Your bank balance is now $#{@bank_balance}"
                puts "Your lucky, you only had a 5% chance of winning!"

        # elsif difficulty_choice == "H"
        #     show = history()
            else
                @bank_balance -= gamble_money
                puts "you lost #{gamble_money}"
                puts "Your bank balance is now $#{@bank_balance}"
                puts "On the Very Hard level, you were disadvantaged to win with a 95% chance of losing."
            end
        end
        
        
            
    end
    

end