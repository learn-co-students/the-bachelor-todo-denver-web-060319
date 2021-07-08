def get_first_name_of_season_winner(data, season)
  data[season].map do |bachelor|
    if bachelor["status"] == "Winner"
        bachelor["name"]
    end
  end.compact[0].split.first
end

# def get_first_name_of_season_winner(data, season)
#   data[season].each do |bachelor|
#     if bachelor["status"] == "Winner"
#         return bachelor["name"].split(" ").first
#     end
#   end
# end

def get_contestant_name(data, occupation)
  data.each do |seasons, bachelor|
    bachelor.each do |bachelor_info|
      if bachelor_info["occupation"] == occupation
        return bachelor_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, bachelor|
    bachelor.each do |bachelor_info|
      if bachelor_info["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |seasons, bachelor|
    bachelor.each do |bachelor_info|
      if bachelor_info["hometown"] == hometown
        return bachelor_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |bachelor|
    bachelor["status"] == "Winner"
      ages << bachelor["age"].to_f
  end
  (ages.inject(:+).to_f / ages.size).round
end

# def get_average_age_for_season(data, season)
#   age_total = 0
#   num_of_contestants = 0
#   data[season].each do |contestant_hash|
#     age_total += (contestant_hash["age"]).to_i
#     num_of_contestants += 1
#   end
#   (age_total / num_of_contestants.to_f).round(0)
# end