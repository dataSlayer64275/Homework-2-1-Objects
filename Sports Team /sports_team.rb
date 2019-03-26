class Team

  attr_reader(:team_name, :players, :coach)
  attr_writer(:coach)

  def initialize(team_name,players,coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(player)
    @players.push(player)
  end

  def check_player_name(player)
    if @players.include?(player)
      return true
    else
      return false
    end
  end

  def update_points(result)
    formatted_result = result.downcase()

    if formatted_result == "win"
      @points += 1
    elsif formatted_result == "loss"
      @points -= 1
    else
    end
  end







end
