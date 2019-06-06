require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    if (contestant["status"] == "Winner")
      name = contestant["name"].split
      return name[0]
    end
	end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |sea, contestants|
  	contestants.each do |contestant|
  	  if (contestant["occupation"] == occupation)
  	  	return contestant["name"]
  	  end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |sea, contestants|
  	contestants.each do |contestant|
  	  if (contestant["hometown"] == hometown)
  	  	count += 1
  	  end
  	end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |sea, contestants|
  	contestants.each do |contestant|
  	  if (contestant["hometown"] == hometown)
  	  	return contestant["occupation"]
  	  end
  	end
  end
end

def get_average_age_for_season(data, season)
  # code here
  count = 0
  age = 0
  data.each do |sea, contestants|
  	if (sea == season)
  		contestants.each do |contestant|
  			age += contestant["age"].to_f
  	  		count += 1
  	  	end
  	  end
  	end
  (age/count).round
end
