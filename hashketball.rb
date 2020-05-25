# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

pp (game_hash.values)
def num_points_scored (player)
  count = 0
  while count < game_hash[:home][:players].size do
    a = game_hash[:home][:players]
    if a[count][:player_name] == player
      return a[count][:points]
    end
    count += 1
  end

  count = 0
  while count < game_hash[:away][:players].size do
    a = game_hash[:away][:players]
    if a[count][:player_name] == player
      return a[count][:points]
    end
    count += 1
  end
#a while loop that checks every player in both home and away teams;
#if the correct player name is found, return its points;
end



# Write code here
def shoe_size (player)
  count = 0
  while count < game_hash[:home][:players].size do
    a = game_hash[:home][:players]
    if a[count][:player_name] == player
      return a[count][:shoe]
    end
    count += 1
  end

  count = 0
  while count < game_hash[:away][:players].size do
    a = game_hash[:away][:players]
    if a[count][:player_name] == player
      return a[count][:shoe]
    end
    count += 1
  end

#same idea here; basically loop over all players;
end

def team_colors (team)
  if game_hash[:home][:team_name] == team
    return game_hash[:home][:colors]
  end

  if game_hash[:away][:team_name] == team
    return game_hash[:away][:colors]
  end

# check whether the team is in home or away; if that team is found
#return the color array of that team

end


def team_names

  [game_hash[:home][:team_name], game_hash[:away][:team_name]]

#there are only two teams so...

end

def player_numbers(team)

  if game_hash[:home][:team_name] == team
    p = game_hash[:home][:players]
  end
  if game_hash[:away][:team_name] == team
    p = game_hash[:away][:players]
  end

  #p is basically the array of players of the required team

  count = 0
  output = []
  while count < p.size do  #loop through each player, and try to add the player number to the output array
    output << p[count][:number]
    count += 1
  end
  output

end

def player_stats (player)

#loop through each player
#output their stats if found

  count = 0
  while count < game_hash[:home][:players].size do
    a = game_hash[:home][:players]
    if a[count][:player_name] == player
      return a[count]
    end
    count += 1
  end

  count = 0
  while count < game_hash[:away][:players].size do
    a = game_hash[:away][:players]
    if a[count][:player_name] == player
      return a[count]
    end
    count += 1
  end




end


def big_shoe_rebounds

  shoe_max = 0
  n_rebound = 0
  count = 0
  while count < game_hash[:home][:players].size do
    a = game_hash[:home][:players]
    if a[count][:shoe] > shoe_max
      shoe_max = a[count][:shoe]
      n_rebound = a[count][:rebounds]
    end
    count += 1
  end

  count = 0
  while count < game_hash[:away][:players].size do
    a = game_hash[:away][:players]
    if a[count][:shoe] > shoe_max  #Find shoe_max and record down the corresponding number of rebounds
      shoe_max = a[count][:shoe]
      n_rebound = a[count][:rebounds]
    end
    count += 1
  end
  n_rebound
end


def most_points_scored

  points_max = 0
  player_name = ""
  count = 0
  while count < game_hash[:home][:players].size do
    a = game_hash[:home][:players]
    if a[count][:points] > points_max
      points_max = a[count][:points]
      player_name = a[count][:player_name]
    end
    count += 1
  end

  count = 0
  while count < game_hash[:away][:players].size do
    a = game_hash[:away][:players]
    if a[count][:points] > points_max
      points_max = a[count][:points]
      player_name = a[count][:player_name]
    end
    count += 1
  end
  puts(player_name)
end

def winning_team

  team_home_total = 0
  team_away_total = 0
  count = 0
  while count < game_hash[:home][:players].size do
    a = game_hash[:home][:players]
      team_home_total += a[count][:points]
    count += 1
  end

  count = 0
  while count < game_hash[:away][:players].size do
    a = game_hash[:away][:players]
      team_away_total += a[count][:points]
    count += 1
  end

  if team_away_total > team_home_total
    p game_hash[:away][:team_name]
  else
    p game_hash[:home][:team_name]
  end

end


def player_with_longest_name
  name_length = 0
  player_name = ""
  count = 0
  while count < game_hash[:home][:players].size do
    a = game_hash[:home][:players]
    if a[count][:player_name].length > name_length
      name_length = a[count][:player_name].length
      player_name = a[count][:player_name]
    end
    count += 1
  end

  count = 0
  while count < game_hash[:away][:players].size do
    a = game_hash[:away][:players]
    if a[count][:player_name].length > name_length
      name_length = a[count][:player_name].length
      player_name = a[count][:player_name]
    end
    count += 1
  end
  puts(player_name)
end


def long_name_steals_a_ton?
  name = player_with_longest_name

  points_max = 0
  player_name = ""
  count = 0
  while count < game_hash[:home][:players].size do
    a = game_hash[:home][:players]
    if a[count][:steals] > points_max
      points_max = a[count][:steals]
      player_name = a[count][:player_name]
    end
    count += 1
  end

  count = 0
  while count < game_hash[:away][:players].size do
    a = game_hash[:away][:players]
    if a[count][:steals] > points_max
      points_max = a[count][:steals]
      player_name = a[count][:player_name]
    end
    count += 1
  end
  if name != player_name
    return false
  else
    return true
  end
end
