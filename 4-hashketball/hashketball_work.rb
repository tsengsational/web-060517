# Initial
def player_home_or_away(player)
  # returns :home or :away for the player name passed into the method
  game_hash.keys.find{|key| game_hash[key][:players].keys.include?(player)}
  # is my player inside the list of home people or the list of away
end

def num_points_scored(player)
  # calls player_home_or_away method to determine whether player is on the :home or :away team
  game_hash[player_home_or_away(player)][:players][player][:points]
end

# Think about roster

def num_points_scored(hash, player_name)
  roster = {}
  hash.values.each do |team_data|
    team_data[:players].keys.each do |player|
      roster[player] = team_data[:players][player]
    end
  end
  return roster[player_name][:points]
end



def make_player_hash(game_hash)
  hash_array = game_hash.collect do |location, team_data|
    team_data[:players]
  end
  # [{}]
  hash_array[0].merge(hash_array[1])
end



def points(player)

# create a new hash with all players and their stats
# find the player and look up the stat


players_roster = game_hash[:home][:players].merge(game_hash[:away][:players])
players_roster[player][:points]
end

def player_list(game_hash)
  game_hash.each_with_object({}) do |(team, team_info), hash|
    hash.merge(team[:players])
  end
end


def num_points_scored(game_hash)
  game_hash[:away][:players].merge(game_hash[:home][:players])
end
