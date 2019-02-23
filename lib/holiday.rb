require 'pry'
#1
def second_supply_for_fourth_of_july(holiday_hash)
    holiday_hash[:summer][:fourth_of_july][1]
end

#2
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|holiday, supplies| supplies << supply}
  end

#3
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day]<< supply 
  holiday_supplies
end

#4
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end 
  
 
#5
def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  #binding.pry 
  holiday_hash[:winter].values.flatten 
  
  #you can also solve it this way too! 
  #holiday_hash[:winter].collect do |key, value| 
    #value 
  #end.flatten
end

#6
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
  puts "#{season.capitalize}:"
  holiday.each do |holiday_name, supplies|
    puts "  #{holiday_name.to_s.split(" - ").collect {|split_holiday_name| split_holiday_name.capitalize}.join(separator" - ")}: #{supplies.join(", ")}"
  end
end 
end 

#7
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end


#1
#given that holiday_hash looks like this:
    # {
    #   :winter => {
    #     :christmas => ["Lights", "Wreath"],
    #     :new_years => ["Party Hats"]
    #   },
    #   :summer => {
    #     :fourth_of_july => ["Fireworks", "BBQ"]
    #   },
    #   :fall => {
    #     :thanksgiving => ["Turkey"]
    #   },
    #   :spring => {
    #     :memorial_day => ["BBQ"]
    #   }
    # }
    #return the second element in the 4th of July array

#2
 #holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

 
#holiday_supplies[:winter].each do |holiday, supplies|  # loop #over holiday_supplies[:winter]
  #supplies << supply # add the supply passed in as an argument to #the method 
  
#3
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
#4
#hash[new_key] = value 

# etc.

# #holiday_supplies = {
#:winter # winter is one key of the first layer  =>  {    # the has it points to is the first value
#     :christmas => ["Lights", "Wreath"] 
#     :new_years => ["Party Hats"]
#   },
#   :summer => {
#     :fourth_of_july => ["Fireworks", "BBQ"]
#   },
#   :fall => {
#     :thanksgiving => ["Turkey"]
#   },
#   :spring => {
#     :memorial_day => ["BBQ"]
#   }
# }

#holiday_supplies.each do |season_name, season_hash|
  #season_name will start as :winter, then :summer, etc. 
  #season_hash will start as: 
  # }
  #  :christmas => ["Lights", "Wreath"], 
  #   :new_years => ["Party Hats"]
  # },
#end 

#You will need to use conditionals to check if the season is the same as the argument, and then add the holiday_name and supply_array #to the associated hash

#6
# iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  




