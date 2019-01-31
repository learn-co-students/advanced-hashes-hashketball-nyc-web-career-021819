require "pry"

def game_hash
  {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {
      :name => "Alan Anderson",
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      },
      {
      :name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
      },
      {
      :name => "Brook Lopez",
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
      },
      {
      :name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 12,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
      },
      {
      :name => "Jason Terry",
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
      }
    ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {
      :name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
      },
      {
      :name => "Bismak Biyombo", 
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 7,
      :blocks => 15,
      :slam_dunks => 10
      },
      {
      :name => "DeSagna Diop", 
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
      },
      {
      :name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
      },
      {
      :name => "Brendan Haywood",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
      }
    ]
  }
}
end

def num_points_scored(player_name)
#enter first layer of the hash

  game_hash.each do |location, team_data|
    
#we then need to enter the second layer to be able to access the players

    team_data[:players].each do |player|
      
#we want the number of a specific player, which we passed as an argument
#if the name on the hash we're iterating over == then we want his points

      if player[:name] == player_name
       return player[:points]
      end
    end
  end
end


def shoe_size(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      if player[:name] == player_name
        return player[:shoe]
      end
    end
  end
end


def team_colors(team)
  game_hash.each do |location, team_data|
     if team_data[:team_name] == team
     return team_data[:colors].flatten
   end
end
end


def team_names
  game_hash.collect do |location, team_data|
#using collect to get the value of the hash's key
    team_data[:team_name]
  end
end



def player_numbers(team)
  teamNumbers = []
  
  game_hash.each do |location, team_data|
    
  #we are accessing players and within the players, we are interested in the attribute specifically
  
    team_data[:players].each do |attibute, data|
      if team_data[:team_name] == team
        teamNumbers << attibute[:number]
      end
    end
  end
  teamNumbers
end





def player_stats(player_name)
newStats = {}
  
  game_hash.collect do |location, team_data|
    team_data[:players].each do |stats|
      
      if stats[:name] == player_name
       stats.delete(:name)
        newStats = stats
      end
    end
  end
  newStats
end


def big_shoe_rebounds
  #of rebounds ==> player with largest shoe size
largestShoe = 0
rebounds = 0

  game_hash.each do |location, team_data|
    team_data[:players].each do |attibute, value|
      if attibute[:shoe] > largestShoe
        largestShoe = attibute[:shoe]
        rebounds = attibute[:rebounds]
      end
    end
  end
  rebounds
end


