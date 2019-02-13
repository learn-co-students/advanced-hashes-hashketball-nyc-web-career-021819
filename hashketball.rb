# Write your code here!
require "pry"

def game_hash
hashketball = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => {
      
      "Alan Anderson" => {
        :number => 0,
        :shoe_size => 16,
        :stats => {
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        }
      },

      "Reggie Evans" => {
        :number => 30,
        :shoe_size => 14,
        :stats => {
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        }
      },

      "Brook Lopez" => {
        :number => 11,
        :shoe_size => 17,
        :stats => {
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        }
      },

      "Mason Plumlee" => {
        :number => 1,
        :shoe_size => 19,
        :stats => {
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        }
      },

      "Jaon Terry" => {
        :number => 31,
        :shoe_size => 15,
        :stats => {
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      },
    },
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => {
      
      "Jeff Arden" => {
        :number => 4,
        :shoe_size => 18,
        :stats => {
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        }
      },

      "Bismak Biyombo" => {
        :number => 0,
        :shoe_size => 16,
        :stats => {
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        }
      },

      "DeSagne Diop" => {
        :number => 2,
        :shoe_size => 14,
        :stats => {
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        }
      },

      "Ben Gordon" => {
        :number => 8,
        :shoe_size => 15,
        :stats => {
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        }
      },

      "Brendan Haywood" => {
        :number => 23,
        :shoe_size => 12,
        :stats => {
          :points => 40,
          :rebounds => 8,
          :assists => 4,
          :steals => 12,
          :blocks => 10,
          :slam_dunks => 12
        }
      },
    },
  }
}
end
 
def num_points_scored(name)
	game_hash.each do |team, team_data|  #game_hash => {}
		team_data.each do |player, player_data| #:player => {}
end 
end 
  
def team_colors(team)
  #Goes through hash, then home away, then names, colors, players
  game_hash.each do |location, team_data|
    #If names, colors, players[:team_name] = argument
    if team_data[:team_name] == team
      return team_data[:colors]
    end
  end
end


def team_names
  game_hash.map do |location, team_data|
    team_data[:team_name]
  end
end

def players_numbers(name_of_team)

  numbers = []
  game_hash.each do |team, chars|
    if name_of_team == game_hash[team][:team_name]
      game_hash[team][:players].each do |name, stats|
        numbers.push(stats[:number])
      end
    end
  end
  return numbers
end


