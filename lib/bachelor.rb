require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].first["name"].split(" ").first
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |element|
      return element["name"] if element["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |element|
      counter += 1 if element["hometown"] == hometown
    end
  end
  counter
end

def get_occupation(data, hometown)
  first_occupation = ""
  data.find do |season, array|
    array.find do |element|
      first_occupation += element["occupation"] if element["hometown"] == hometown
      end
    end
  first_occupation
end

def get_average_age_for_season(data, season)
  map_result = data[season].map do |element|
    element["age"].to_f
  end
  (map_result.reduce(:+)/(map_result.size)).round
end