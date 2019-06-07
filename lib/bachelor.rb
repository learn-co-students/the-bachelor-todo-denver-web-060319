require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  arr = data[season].find do |contestant|
    contestant["status"] == "Winner"
  end["name"].split[0]
end

def get_contestant_name(data, occupation)
  #code here
  data.collect do |season, value|
    value.collect do |key, info|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, array|
    array.each do |contestant, info|
      if contestant["hometown"] == hometown
        counter += 1
      else
        next
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  # code here
  ages = data[season].map {|contestant| contestant["age"].to_i}
  (ages.reduce(:+)/ages.length.to_f).round
end
