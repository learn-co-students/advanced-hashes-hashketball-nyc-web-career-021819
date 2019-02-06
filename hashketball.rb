# Write your code here!
require "pry"

def game_hash                                         #create a hash

  game_hash = {                                       #game_hash
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1 
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12 
        }
    }
  }
}
end

def num_points_scored(player)
  game_hash.each do |key, value|                #iterate over "game_hash"
    value[:players].each do |name, stat|        #iterate over values in game_hash to :players
      if name == player                         #if name in :players match player arg
        return stat[:points]                    #return all values in :points
      end
    end
  end
end

def shoe_size(player)
  game_hash.each do |key, value|                    
    value[:players].each do |name, stat|
      if name == player
        return stat[:shoe]                      #return all values in :shoe
      end
    end
  end
end

def team_colors(team)
  game_hash.each do |key, value|                #iterate over "game_hash"
    if value[:team_name] == team                #if values in team are present in :team_name
      return value[:colors]                     #return values in :colors
    end 
  end
end

def team_names
  team_array = []                 #has to return in an array, create new array for to display
  game_hash.each do |key, value|           #iterate thru game_hash
      team_array << value[:team_name]      #pushing values of :team_name into the new array
    end 
    return team_array
  end
  
def player_numbers(team)
  numbers_array = []                               #new array
  game_hash.each do |key, value|                  #iterate thru game_hash
    value[:players].each do |name, stat|          #iterate thru :players
      if value[:team_name] == team                #if values in team match :team_name
        numbers_array << stat[:number]            #push :number into the new array
      end
    end
  end
  return numbers_array
end

def player_stats(player)
  game_hash.each do |key, value|
    value[:players].each do |name, stat|
      if name == player                     #determine if values in name match arg "player"
        return stat                         #return values in stat
      end
    end
  end
end

def big_shoe_rebounds
  shoe = []
  game_hash.each do |key, value|
    value[:players].each do |name, stat|
      shoe << stat[:shoe]                       #pushing all values of :shoe into
    end
      largest_shoe = shoe.max
        value[:players].each do |name, stat|    #iterating in diff block
          if stat[:shoe] == largest_shoe        #getting value in :shoe that match largest_shoe
        return stat[:rebounds]                  #return that value in rebounds for that specfic                                           value associated with the largest_shoe
      end
    end
  end
end


