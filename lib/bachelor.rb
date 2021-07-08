def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data[season].each do |bachelorette|
    if bachelorette["status"] == "Winner"
      winner_name = bachelorette["name"]
    end
  end
  winner_name.split.first
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |season, descriptor|
    data[season].each do |bachelorette|
      if bachelorette["occupation"] == occupation
        contestant_name = bachelorette["name"]
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, descriptor|
    data[season].each do |bachelorette|
      if bachelorette["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  occupation_data = []
  data.each do |season, descriptor|
    data[season].each do |bachelorette|
      if bachelorette["hometown"] == hometown
        occupation_data << bachelorette["occupation"]
      end
    end
  end
  occupation_data.first
end

def get_average_age_for_season(data, season)
  season_ages_array = []
  season_age_total = 0
  data[season].each do |bachelorette|
    season_ages_array << bachelorette["age"].to_f
    season_age_total += bachelorette["age"].to_f
  end
  (season_age_total / season_ages_array.count).round
end
