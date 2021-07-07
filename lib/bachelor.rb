require 'pry'

def get_first_name_of_season_winner(data, season)
name_array = []
winner = []
  data[season].each do |contestants, blank|
      contestants.each do |attribute_name, attribute_value|
        if attribute_name == "name"
          name_array.unshift(attribute_value)
        end
        if attribute_name == "status" && attribute_value == "Winner"
          winner.push(name_array[0])
        end
      end
  end
  winner[0].split(" ")[0]
end

def get_contestant_name(data, occupation)

name_placeholder = []
specific_contestant = []
  data.each do |season_number, all_contestant_hash|
    all_contestant_hash.each do |ind_contestant_hash, blank|
      ind_contestant_hash.each do |contestant_att, att_value|
        if contestant_att == "name"
          name_placeholder.unshift(att_value)
        end
        if contestant_att == "occupation" && att_value == occupation
          specific_contestant.push(name_placeholder[0])
        end
      end
    end
  end
  specific_contestant[0]
end

def count_contestants_by_hometown(data, hometown)
  # return counter of the number of contestants who are from that hometown.
  hometown_counter = 0
  data.each do |season_number, all_contestant_hash|
    all_contestant_hash.each do |ind_contestant_hash, blank|
      ind_contestant_hash.each do |contestant_att, att_value|
        if contestant_att == "hometown" && att_value == hometown
          hometown_counter += 1
        end
      end
    end
  end
  hometown_counter
end

##########BIG NOTE ON THE FOLLOWING: RECOGNIZE WHEN YOU'RE ITERATING THRU an
########### ARRAY vs. a HASH... DIFFERENT RULES APPLY #####################
def get_occupation(data, hometown)
array_placement = 0
    data.each do |season_number, all_contestants_array|
      all_contestants_array.each_with_index do |each_contestant_hash, index|
        array_placement = index
        each_contestant_hash.each do |contestant_att, att_value|
          if contestant_att == "hometown" && att_value == hometown
          return data[season_number][array_placement]["occupation"]
          end
        end
      end
    end
end

def get_average_age_for_season(data, season)

  age_array = []

        data[season].each do |individual_contestants|
          individual_contestants.each do |attribute, value|
            if attribute == "age"
              age_array << value
            end
          end
        end

        integer_array = []

        age_array.each do |x|
          integer_array << x.to_f
        end

        sum = integer_array.sum
        number_of_ages = integer_array.length

        average = (sum / number_of_ages).round
        average
end
