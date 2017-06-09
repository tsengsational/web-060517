require 'pry'

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
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
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
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def players
  game_hash.values.map do |team_hash|
    team_hash[:players]
  end.flatten
end

def find_player(player_name)
  players.find do |player|
    player[:player_name] == player_name
  end
end

def num_points_scored(player_name)


  #start with a hash
  # give me a list of players
  # players_hash = players.each_with_object({}) do |player, players_hash|
  #   # {player_name: "Reggie Evans", points: 23}
  #   name = player[:player_name]
  #   players_hash[name] = player
  # end
  # go through each of my players
  #
  # players_hash = players.each_with_object({}) do |player, players_hash|
  #   # {player_name: "Reggie Evans", points: 23}
  #   name = player[:player_name]
  #   players_hash[name] = player
  # end

  # for each player insert in the corresponding value of player name
  # as the key
  # and the value as that player hash

  find_player(player_name)[:points]
  # [{name: ben}]
  # binding.pry
end
# hash_array = game_hash.collect do |location, team_data|
#   team_data[:players]
# end
# [{}]
# hash_array[0].merge(hash_array[1])

def shoe_size(player_name)
  # 1. get a list of players
  # players = game_hash.values.map do |team_hash|
  #   team_hash[:players]
  # end.flatten
  # 2. given a player name, give me back that player's information
  # found_player = players.find do |player|
  #   player[:player_name] == player_name
  # end
  # 3. now find his shoe size
  find_player(player_name)[:shoe_size]
end


num_points_scored("Jeff Adrien")




[
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
  }, {
    player_name: "Bismak Biyombo",
    number: 0,
    shoe: 16,
    points: 12,
    rebounds: 4,
    assists: 7,
    steals: 7,
    blocks: 15,
    slam_dunks: 10
  }, {
    player_name: "DeSagna Diop",
    number: 2,
    shoe: 14,
    points: 24,
    rebounds: 12,
    assists: 12,
    steals: 4,
    blocks: 5,
    slam_dunks: 5
  }, {
    player_name: "Ben Gordon",
    number: 8,
    shoe: 15,
    points: 33,
    rebounds: 3,
    assists: 2,
    steals: 1,
    blocks: 1,
    slam_dunks: 0
  }, {
    player_name: "Brendan Haywood",
    number: 33,
    shoe: 15,
    points: 6,
    rebounds: 12,
    assists: 12,
    steals: 22,
    blocks: 5,
    slam_dunks: 12
  }
]


# shoe_size
# big_shoe_rebounds
