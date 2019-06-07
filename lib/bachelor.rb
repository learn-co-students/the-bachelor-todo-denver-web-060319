require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do|contestant|
    if contestant["status"]
      return contestant["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  #code here
  data.each do |season, contestant|
    contestant.each do |info|
      info.each_value do|stats|
        if stats == occupation
          return info["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.each do |season, contestant|
    contestant.each do |info|
      info.each_value do|stats|
        if stats == hometown
          hometown_count += 1
        end
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |info|
      info.each_value do|stats|
        if stats == hometown
          return info["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  number_of_contestants = 0
  age =[]
  data[season].collect do|contestants|
  number_of_contestants += 1
  #end.reduce(:+)/number_of_contestants
  age.push(contestants["age"].to_i)
  #binding.pry
  end
  (age.reduce(:+)/number_of_contestants.to_f).round
end
