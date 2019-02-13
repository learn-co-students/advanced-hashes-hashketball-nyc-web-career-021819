# Write your code here!

def game_hash
    {
        home: {
            team_name:"Brooklyn Nets",
            colors:["Black", "White"],
            players:{
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
            team_name:"Charlotte Hornets",
            colors:["Turquoise", "Purple"],
            players:{
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

def num_points_scored(player_name)
    game_hash.each do |location, team_data|
        team_data.each do |team_info_category, team_info|
            if team_info_category == :players
                if team_info.keys.include?(player_name)
                    # puts team_info[player_name][:points]
                    return team_info[player_name][:points]
                end
            end
        end
    end
end

def shoe_size(player_name)
    game_hash.each do |location, team_data|
        team_data.each do |team_info_category, team_info|
            if team_info_category == :players
                if team_info.keys.include?(player_name)
                    # puts team_info[player_name][:points]
                    return team_info[player_name][:shoe]
                end
            end
        end
    end
end

def team_colors(team_name)
    game_hash.each do |location, team_data|
        if team_data[:team_name] == team_name
            return team_data[:colors]
        end
    end
end

def team_names
    solution = []

    game_hash.each do |location, team_data|
        solution.push(team_data[:team_name])
    end
    return solution
end

def player_numbers(team_name)
    solution = []

    game_hash.each do |location, team_data|
        if team_data[:team_name] == team_name
            team_data.each do |team_info_category, team_info|
                if team_info_category == :players
                    team_info.each do |player, stats|
                        # puts stats[:number]
                        solution.push(stats[:number])
                    end
                end
            end
        end
    end
    return solution
end

def player_stats(player_name)
    game_hash.each do |location, team_data|
        team_data.each do |team_info_category, team_info|
            if team_info_category == :players
                if team_info.keys.include?(player_name)
                    return team_info[player_name]
                end
            end
        end
    end
end

def big_shoe_rebounds
    largest_shoe = 0
    largest_shoe_player = ""
    largest_shoe_rebounds = 0

    game_hash.each do |location, team_data|
        team_data.each do |team_info_category, team_info|
            if team_info_category == :players
                team_info.each do |player, stats|
                    if stats[:shoe] > largest_shoe
                        largest_shoe = stats[:shoe]
                        largest_shoe_player = player
                        largest_shoe_rebounds = stats[:rebounds]
                    end
                end
            end
        end
    end

    return largest_shoe_rebounds
end
