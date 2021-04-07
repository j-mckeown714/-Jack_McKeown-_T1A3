require('colorize')
require ('cli-colorize')
require ('optics')

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