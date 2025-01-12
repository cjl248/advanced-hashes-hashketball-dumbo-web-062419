# Write your code here!

require 'pry'

def game_hash
  game_hash = {:home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players =>
      [
        {
          :name => 'Alan Anderson',
          :number => 0,
          :shoe => 16,
          :points =>22,
          :rebounds =>12,
          :assists =>12,
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
          :blocks =>12,
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
          :rebounds => 11,
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
    :players =>
      [
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
          :name => "Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
        },
        {
          :name =>"DeSagna Diop",
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
          :name => "Kemba Walker",
          :number => 33,
          :shoe => 15,
          :points =>6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
        }
      ] 
    }
  }
end


def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry
 
      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end
#good_practices


def num_points_scored(name)
  home_team_players = game_hash[:home][:players]
  away_team_players = game_hash[:away][:players]
  player = (home_team_players + away_team_players).find do |p|
    p[:name] == name 
  end
  player[:points]
end

def shoe_size(name)
	game_hash.each do |k, v|
		v[:players].each do |p|
			if p[:name] == name
				return p[:shoe]
			end
		end
	end
end

def team_colors(team)
	game_hash.each do |k,v|
		if v[:team_name] == team
			return v[:colors]
		end
	end
end

def team_names
  answer = []
  game_hash.each do |k,v|
    name = v[:team_name]
    answer << name
  end
  return answer
end

def player_numbers(team_name)
  answer = []
  game_hash.each do |k,v|
    if v[:team_name] == team_name
      v[:players].each do |p|
        answer << p[:number]
      end
      return answer
    end
  end
end

def player_stats(name)
  game_hash.each do |k,v|
    v[:players].each do |p|
      if p[:name] == name
        answer = p
        answer.delete(:name)
        return answer
      end
    end
  end
end

def big_shoe_rebounds
	shoe_array = []
	game_hash.each do |k,v|
		v[:players].each do |p|
			shoe_array << p[:shoe]
		end
		shoe_array = shoe_array.sort
		biggest_shoe = shoe_array[-1]
		v[:players].each do |p|
			if p[:shoe] == biggest_shoe
				return p[:rebounds]
			end
		end
	end
end


# BONUS

def most_points_scored
end


def winning_team
end


def player_with_longest_name
end


# SUPER BONUS


def long_name_steals_a_ton?
end







