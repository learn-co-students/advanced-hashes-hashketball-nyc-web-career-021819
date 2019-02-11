require "pry"

def game_hash
  {
    :home => {
        :team_name => "Brooklyn Nets",
        :colors => ["Black", "White"],
        :players => [
          {player_name: "Alan Anderson",
            number: 0,
            shoe: 16,
            points: 22,
            rebounds: 12,
            assists: 12,
            steals: 3,
            blocks: 1,
            slam_dunks: 1 },

          {player_name: "Reggie Evans",
            number: 30,
            shoe:14,
            points: 12,
            rebounds: 12,
            assists: 12,
            steals: 12,
            blocks: 12,
            slam_dunks: 7 },
          {player_name: "Brook Lopez",
            number: 11,
            shoe:17,
            points: 17,
            rebounds: 19,
            assists: 10,
            steals: 3,
            blocks: 1,
            slam_dunks: 15 },
          {player_name: "Mason Plumlee",
            number: 1,
            shoe:19,
            points: 26,
            rebounds: 12,
            assists: 6,
            steals: 3,
            blocks: 8,
            slam_dunks: 5 },
          {player_name: "Jason Terry",
            number: 31,
            shoe: 15,
            points: 19,
            rebounds: 2,
            assists: 2,
            steals: 4,
            blocks: 11,
            slam_dunks: 1}
          ]
        },
    :away => {
        :team_name => "Charlotte Hornets",
        :colors => ["Turquoise", "Purple"],
        :players => [
        {player_name: "Jeff Adrien",
          number: 4,
          shoe:18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2},
        {player_name: "Bismak Biyombo",
          number: 0,
          shoe:16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10},
        {player_name: "DeSagna Diop",
          number: 2,
          shoe:14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5},
        {player_name: "Ben Gordon",
          number: 8,
          shoe:15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0},
        {player_name: "Brendan Haywood",
          number: 33,
          shoe:15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12}
        ]
    }
  }
end

def num_points_scored(name)
  game_hash.each do |location, data|
    data[:players].each do |info|
      if info[:player_name] == name
      return info[:points]
    end
    end
  end
end

def shoe_size(name)
  game_hash.each do |location, data|
    data[:players].each do |details|
      if details[:player_name] == name
        return details[:shoe]
      end
    end
  end
end

def team_colors(team)
  game_hash.each do |location, data|
    if data[:team_name] == team
    return data[:colors]
    end
  end
end

def team_names
  array =[]
  game_hash.map do |location, data|
  array<< data[:team_name]
end
array
end

def player_numbers(team)
  array =[]
  game_hash.each do |location, data|
    if data[:team_name] == team
    data[:players].each do |details|
      array<< details[:number]
    end
  end
end
  array
end

def player_stats(name)
  hash ={}
  game_hash.each do |location, data|
    data[:players].each do |detail|
      if detail[:player_name] == name
        hash = detail.delete_if{detail[:player_name]}
      end
    end
  end
  hash
end

def big_shoe_rebounds
  game_hash.each do |location, data|
    data[:players].each do |detail|
      if detail.max_by{detail[:shoe]}
        return detail[:rebounds]
      end
    end
  end
end

def most_points_scored
  points_scored = 0
  array =[]
  game_hash.each do |location, data|
    data[:players].each do |detail|
      if detail[:points] > points_scored
        points_scored = detail[:points]
        array =detail[:player_name]
      end
      end
    end
  array
end

def winning_team
  array = []
  game_hash.each do |location, data|
    if data[:team_name].include?("Brooklyn")
      array = data[:team_name]
    end
    end
    array
  end

def player_with_longest_name
  name = ""
  game_hash.each do |location, data|
    data[:players].each do |detail|
      if detail[:player_name].length > name.length
        name = detail[:player_name]
      end
    end
  end
  name
end

def long_name_steals_a_ton?
  name = ""
  player_with_longest_name.include?(name)
end
