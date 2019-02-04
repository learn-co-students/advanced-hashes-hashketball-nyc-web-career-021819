require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

#### helper methods ###############################################################
def players
  #method to combine our players data in one hash
  home = game_hash[:home][:players]
  away = game_hash[:away][:players]
  # using merge to combine hashes, combines players since can only have unique key
  home.merge(away)
end

def find_player(name)
  # players[name]

  game_hash.each do |location, team_data|
    team_data[:players].each do |player, stats|
      if player === name
        return stats
      end
    end
  end
end

def find_team(team_name)
  team = nil

  game_hash.each do |location, team_data|
    if team_data[:team_name] === team_name
      team = team_data
    end
  end

  team
end


################################################################################

def num_points_scored(name)
  player = find_player(name)
  player[:points]
end

def shoe_size(name)
  player = find_player(name)
  player[:shoe]
end

def team_colors(team_name)
  team_stats = find_team(team_name)
  color =  team_stats[:colors]
end

def team_names
  teams = []

  game_hash.each do |location, team_data|
    teams.push(team_data[:team_name])
    # team_data.each do |attribute, data|
    #   if attribute === :team_name
    #     teams.push(data)
    #   end
    # end
  end

  teams
end

def player_numbers(team_name)
  numbers = []
  players_hash = find_team(team_name)[:players]

  players_hash.each do |player, data|
    numbers.push(data[:number]);

    # data.each do |attribute, val|
    #   if attribute === :number
    #     numbers.push(val)
    #   end
    # end
  end

  numbers
end

def player_stats(player_name)
  find_player(player_name)
end

def big_shoe_rebounds
  max = nil
  max_stats = nil

  players.each do |player, stats|
    shoe_size = stats[:shoe]
    if max == nil || shoe_size > max
      max = shoe_size
      max_stats = stats
    end
  end

  max_stats[:rebounds]
end
