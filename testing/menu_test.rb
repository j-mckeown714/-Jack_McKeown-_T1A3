require 'test/unit'
require_relative '../classes/menu'

class MenuTest < Test::Unit::TestCase
    def test_test_new_instance
        menu = Menu.new()
        assert_not_nil(menu)
    end

    def test_new_no_params
        assert_raise(ArgumentError) {
            menu = Menu.new()
            menu.menu_options
        }
    end

end

