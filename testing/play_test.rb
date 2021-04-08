require 'test/unit'
require_relative '../classes/play'

class PlayTest < Test::Unit::TestCase
    def test_new_instance
        play = Play.new()
        assert_not_nil(play)
    end
end

class PlayTest < Test::Unit::TestCase
    def test_valid_difficulty
        play = Play.new()
        assert_equal(play.valid_difficulty)
    end
end

