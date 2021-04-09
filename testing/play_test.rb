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
        assert_equal(expected_output, play.easy_win_calculate(gamble_money))
    end
end

class PlayTest < Test::Unit::TestCase
    def test_medium_win_money
        play = Play.new()
        gamble_money = 50
        y= 1.2
        expected_output = 60
        assert_equal(expected_output, play.medium_win_calculate(gamble_money))
    end
end

class PlayTest < Test::Unit::TestCase
    def test_hard_win_money
        play = Play.new()
        gamble_money = 50
        y= 1.4
        expected_output = 70
        assert_equal(expected_output, play.hard_win_calculate(gamble_money))
    end
end

class PlayTest < Test::Unit::TestCase
    def test_very_hard_win_money
        play = Play.new()
        gamble_money = 50
        y= 1.5
        expected_output = 75
        assert_equal(expected_output, play.very_hard_win_calculate(gamble_money))
    end
end
