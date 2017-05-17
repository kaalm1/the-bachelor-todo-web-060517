def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |seas,arr|
    if season == seas.to_s
      arr.each do |info|
        return info["name"].split(' ').shift if info["status"] == "Winner"
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, arr|
    arr.each do |info|
      return info["name"] if info["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  sum = 0
  data.each do |season, arr|
    arr.each do |info|
      sum+= 1 if info["hometown"] == hometown
    end
  end
  return sum
end

def get_occupation(data, hometown)
  # code here

  data.each do |season, arr|
    arr.each do |info|
      return info["occupation"] if info["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum = 0
  data[season].each { |x| sum += x["age"].to_i}
  (sum / data[season].count.to_f).round
end
