require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../sports_team.rb')

class SportsTeamTest < MiniTest::Test

def test_team_name
team = Team.new("Glasgow",["John", "Billy", "Jeremiah"], "Randy Bobandy")
assert_equal("Glasgow", team.team_name)
end

def test_players
team = Team.new("Glasgow",["John", "Billy", "Jeremiah"], "Randy Bobandy")
assert_equal(["John", "Billy", "Jeremiah"], team.players)

end

def test_coach
team = Team.new("Glasgow",["John", "Billy", "Jeremiah"], "Randy Bobandy")
assert_equal("Randy Bobandy", team.coach)
end

def test_update_coach
  team = Team.new("Glasgow",["John", "Billy", "Jeremiah"], "Randy Bobandy")
  team.coach = "Jimmy Lahey"
  assert_equal("Jimmy Lahey", team.coach)
end

def test_add_player
  team = Team.new("Glasgow",["John", "Billy", "Jeremiah"], "Randy Bobandy")
  team.add_player("Rufus")
  assert_equal(["John", "Billy", "Jeremiah", "Rufus"], team.players)
end

def test_check_player_name__true
  team = Team.new("Glasgow",["John", "Billy", "Jeremiah"], "Randy Bobandy")
  assert_equal(true, team.check_player_name("Jeremiah"))
end

def test_check_player_name__false
  team = Team.new("Glasgow",["John", "Billy", "Jeremiah"], "Randy Bobandy")
  assert_equal(false, team.check_player_name("George"))
end

def test_update_points__win
  team = Team.new("Glasgow",["John", "Billy", "Jeremiah"], "Randy Bobandy")
  result = team.update_points("WIn")
  assert_equal(1, result)
end

def test_update_points__loss
  team = Team.new("Glasgow",["John", "Billy", "Jeremiah"], "Randy Bobandy")
  result = team.update_points("loSs")
  assert_equal(-1, result)
end
end
