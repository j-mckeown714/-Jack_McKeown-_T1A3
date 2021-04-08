require 'test/unit'
require_relative '../classes/menu'

class MenuTest < Test::Unit::TestCase
    def test_test_new_instance
        menu = Menu.new()
        assert_not_nil(menu)
    end
end

