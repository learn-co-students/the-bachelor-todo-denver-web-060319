require 'pry'
# "season 18":[
#       {
#          "name":"Nikki Ferrell",
#          "age":"26",
#          "hometown":"Kearney, Missouri",
#          "occupation":"Pediatric Nurse",
#          "status":"Winner"
#       },


def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    if person["status"] == "Winner"
      return person["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, person|
    person.each do |hash|
      if hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, person|
    person.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  arr = data[season].collect do |person|
    person["age"].to_f
  end
  (arr.reduce(:+) / arr.size).round
end
