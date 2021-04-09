require 'test/unit'
require_relative '../classes/play'

class PlayTest < Test::Unit::TestCase
    def test_new_instance
        play = Play.new()
        assert_not_nil(play)
    end
end

class PlayTest < Test::Unit::TestCase
    def test_easy_win_money
        play = Play.new()
        gamble_money = 50
        y= 1.05
        expected_output = 52.5
        assert_equal(expected_output, play.calculate(gamble_money))
    end
end

