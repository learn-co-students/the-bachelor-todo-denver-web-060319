
def get_first_name_of_season_winner(data, season)
  first_name = nil
  data[season].each do |k|
    if k["status"] == "Winner"
      puts first_name = k["name"].split(" ")[0]
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  job = nil
  data.each do |s, v|
    v.each do |k|
      if k["occupation"] == occupation
        puts job = k["name"]
      end
    end
  end
  job
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |s, v|
    v.each do |k|
      #binding.pry
      if k["hometown"] == hometown
        count += 1
      end
    end 
  end
  count
end

def get_occupation(data, hometown)
  data.each do |s, v|
    v.each do |k|
      if k["hometown"] == hometown
        return k["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |k|
    ages << Integer(k["age"])
  end
  samples = ages.count
  sum = 0
  ages.each do |num|
    sum = sum + num
  end
  return (sum.to_f/samples.to_f).round
end
