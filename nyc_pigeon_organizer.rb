pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# def nyc_pigeon_organizer(data)
#   new_hash = {}
#   data[:gender][:male].each do |male_name|
#     new_hash[male_name] = {}
#     new_hash[male_name][:gender] = []
#     new_hash[male_name][:lives] = []
#     new_hash[male_name][:color] = []
#
#     new_hash[male_name][:gender] << "male"
#
#
#     data[:color].each do |color, array|
#
#       if array.include?(male_name)
#         new_hash[male_name][:color] << color.to_s
#       end
#     end
#
#     data[:lives].each do |location, array|
#
#       if array.include?(male_name)
#         new_hash[male_name][:lives] << location
#       end
#     end
#
#   end
#
#   data[:gender][:female].each do |female_name|
#     new_hash[female_name] = {}
#     new_hash[female_name][:gender] = []
#     new_hash[female_name][:lives] = []
#     new_hash[female_name][:color] = []
#
#     new_hash[female_name][:gender] << "female"
#
#
#     data[:color].each do |color, array|
#
#       if array.include?(female_name)
#         new_hash[female_name][:color] << color.to_s
#       end
#     end
#
#     data[:lives].each do |location, array|
#
#       if array.include?(female_name)
#         new_hash[female_name][:lives] << location
#       end
#     end
#
#   end
#
# new_hash
# end
def nyc_pigeon_organizer(data)
new_hash = {}
names = data[:gender][:male] + data[:gender][:female]
names.each do |name|
  new_hash[name] = {}
  new_hash[name][:gender] = []
  new_hash[name][:lives] = []
  new_hash[name][:color] = []




     data[:color].each do |color, array|

       if array.include?(name)
         new_hash[name][:color] << color.to_s
       end
     end

     data[:lives].each do |location, array|

       if array.include?(name)
         new_hash[name][:lives] << location
       end
     end

     data[:gender].each do |gender, array|

       if array.include?(name)
         new_hash[name][:gender] << gender.to_s
       end
    end

   end
  new_hash
  end
