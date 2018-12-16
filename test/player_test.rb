require "minitest/autorun"
require "minitest/pride"
require "../lib/player"

class PlayerTest < Minitest::Test
    def test_it_exists
        player = Player.new({})
        assert_instance_of Player, player
    end

    def test_it_has_a_name
        player = Player.new({name: "Luka Modric"})
        assert_equal "Luka Modric", player.name
    end

    def test_it_can_have_different_name
        player = Player.new({name: "Cristiano Ronaldo"})
        assert_equal "Cristiano Ronaldo", player.name
    end

    def it_has_a_position
        player = player = Player.new({name: "Luka Modric", position: "Midfielder"})
        assert_equal "Midfielder", player.position
    end

    def test_it_can_have_different_position
        player = Player.new({name: "Cristiano Ronaldo", position: "forward"})
        assert_equal "forward", player.position
    end

    

end