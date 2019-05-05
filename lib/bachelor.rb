def get_first_name_of_season_winner(data, season)
  first_name = []
  data[season].each do |contestant| # contestant refers to all info about each contestant
    if contestant["status"] == "Winner"
      first_name << contestant["name"].split(" ")[0] # splits name of winner
    end
  end
  first_name[0] # return only the first value
end

def get_contestant_name(data, occupation)
  full_name = []
  data.each do |season, contestants|
    contestants.each do |stats, values|
      if stats["occupation"] == occupation
        full_name << stats["name"]
      end
    end
  end
  full_name[0]
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, contestants|
    contestants.each do |stats, values|
      if stats["hometown"] == hometown
        counter += 1 
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |stats, values|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0 
  data[season].each do |contestant|
    age_total = contestant["age"]
end
