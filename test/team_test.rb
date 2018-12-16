require "minitest/autorun"
require "minitest/pride"
require "../lib/team"
require "../lib/player"

class TeamTest < Minitest::Test
    def test_it_exists
        team = Team.new("France")
        
        assert_instance_of Team, team
    end

    def test_it_has_a_country
        team = Team.new("France")

        assert_equal "France", team.country 
    end

    def test_it_is_not_eliminated_by_default
        team = Team.new("France")

        refute team.eliminated?
    end

    def test_it_has_no_players_by_default
        team = Team.new("France")

        assert_equal [], team.players 
    end

    def test_add_player
        team = Team.new("France")
        mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
        pogba = Player.new({name: "Paul Pogba", position: "midfielder"}) 
        team.add_player(mbappe)
        team.add_player(pogba)

        assert_equal 2, team.players.length
        assert_equal [mbappe, pogba], team.players
    end

    def test_get_players_by_position
        team = Team.new("France")
        mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
        pogba = Player.new({name: "Paul Pogba", position: "midfielder"}) 
        team.add_player(mbappe)
        team.add_player(pogba)

        assert_equal [pogba], team.players_by_position("midfielder")
        assert_equal [],  team.players_by_position("defender")
    end




end