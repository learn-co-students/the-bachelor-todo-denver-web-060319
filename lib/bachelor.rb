require "pry"
def get_first_name_of_season_winner(par_1, par_2)
  # code here
   par_1[par_2].each do |cont_stat|
     if cont_stat["status"]=="Winner"
      return cont_stat["name"].split.first
     end 
   end
  end 
      


def get_contestant_name(data, occupation)
  # code here
  data.each do |k,v|
    v.each do |element|
      if element["occupation"] == occupation
        return element["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |k,v|
    v.each do |element|
      if element["hometown"] == hometown
      counter+=1
       end 
    end 
  end 
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |k,v|
    v.each do |element|
      if element["hometown"] == hometown
        return element["occupation"]
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  ages_arr = data[season].map do |element|
    element["age"].to_f
  end
    
  (ages_arr.reduce(:+)/ages_arr.size).round
end 

