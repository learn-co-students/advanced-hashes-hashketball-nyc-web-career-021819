require "pry"

def game_hash
  game = {
    :home =>{
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => "0", 
          :shoe => "16",
          :points => "22",
          :rebounds => "12",
          :assists => "12",
          :steals => "3",
          :blocks => "1",
          :slam_dunks => "1"
        },
        "Reggie Evans" => {
          :number => "30", 
          :shoe => "14",
          :points => "12",
          :rebounds => "12",
          :assists => "12",
          :steals => "12",
          :blocks => "12",
          :slam_dunks => "7"
        },
        "Brook Lopez" => {
          :number => "11", 
          :shoe => "17",
          :points => "17",
          :rebounds => "19",
          :assists => "10",
          :steals => "3",
          :blocks => "1",
          :slam_dunks => "15"
        },
        "Mason Plumlee" => {
          :number => "1", 
          :shoe => "19",
          :points => "26",
          :rebounds => "12",
          :assists => "6",
          :steals => "3",
          :blocks => "8",
          :slam_dunks => "5"
        },
        "Jason Terry" => {
          :number => "31", 
          :shoe => "15",
          :points => "19",
          :rebounds => "2",
          :assists => "2",
          :steals => "4",
          :blocks => "11",
          :slam_dunks => "1"
        }
      }
    },
    :away =>{
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien"  => {
          :number => "4", 
          :shoe => "18",
          :points => "10",
          :rebounds => "1",
          :assists => "1",
          :steals => "2",
          :blocks => "7",
          :slam_dunks => "2"
        },
        "Bismak Biyombo"  => {
          :number => "0", 
          :shoe => "16",
          :points => "12",
          :rebounds => "4",
          :assists => "7",
          :steals => "7",
          :blocks => "15",
          :slam_dunks => "10"
        },
        "DeSagna Diop"  => {
          :number => "2", 
          :shoe => "14",
          :points => "24",
          :rebounds => "12",
          :assists => "12",
          :steals => "4",
          :blocks => "5",
          :slam_dunks => "5"
        },
        "Ben Gordon"  => {
          :number =>"8", 
          :shoe => "15",
          :points => "33",
          :rebounds => "3",
          :assists => "2",
          :steals => "1",
          :blocks => "1",
          :slam_dunks => "0"
        },
        "Brendan Haywood"  => {
          :number => "33", 
          :shoe => "15",
          :points => "6",
          :rebounds => "12",
          :assists => "12",
          :steals => "22",
          :blocks => "5",
          :slam_dunks => "12"
        }
      }
    }
  }
end

def num_points_scored(player_name)
  game_hash.each do |location, attributes|
    attributes.each do |aspect, info|
      if aspect == :players
        info.each do |name, stats|
          if name == player_name
            return game_hash[location][aspect][name][:points].to_i
          end
        end
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |location, attributes|
    attributes.each do |aspect, info|
      if aspect == :players
        info.each do |name, stats|
          if name == player_name
            return game_hash[location][aspect][name][:shoe].to_i
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location,attributes|
    attributes.each do |aspect,info|
      if attributes[:team_name] == team_name
        return game_hash[location][:colors]
      end
    end
  end
end

def team_names
  names_array = []
  game_hash.each do |location, attributes|
      names_array << game_hash[location][:team_name]
  end
  names_array
end

def player_numbers(team_name)
  jersey_array = []
  game_hash.each do |location, attributes|
    attributes.each do |aspect, info|
      if aspect == :players
        info.each do |name, stats|
          if game_hash[location][:team_name] == team_name
          jersey_array << game_hash[location][aspect][name][:number].to_i
          end
        end
      end
    end
  end
  jersey_array
end

def player_stats(player_name)
  num_stats = {}
  game_hash.each do |location, attributes|
    attributes.each do |aspect, info|
      if aspect == :players 
        info.each do |name, stats|
          if name == player_name
            stats.each do |metric, reading|
              num_stats[metric] = reading.to_i
            end
          return num_stats
          end
        end
      end
    end
  end
end


def big_shoe_rebounds
  names = []
  shoe_sizes = []
  game_hash.each do |location, attributes|
    game_hash[location][:players].each do |name,stats|
      names.push(name)
      shoe_sizes.push(stats[:shoe])
    end
  end
  largest = 0
  shoe_sizes.each do |size|
    if size.to_i > largest
      largest = size.to_i
    end
  end
  player_with_largest = names[shoe_sizes.index(largest.to_s)]
  game_hash.each do |location, attributes|
    game_hash[location][:players].each do |name, stats|
     if player_with_largest == name
       return stats[:rebounds].to_i
      end
    end
  end
end