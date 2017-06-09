require 'pry-byebug'
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   },


# }

#     {"Theo"=>{:color=>[], :gender=>[], :lives=>[]},
# "Peter Jr."=>{:color=>[], :gender=>[], :lives=>[]},
# "Lucky"=>{:color=>[], :gender=>[], :lives=>[]},
# "Ms. K"=>{:color=>[], :gender=>[], :lives=>[]},
# "Queenie"=>{:color=>[], :gender=>[], :lives=>[]},
# "Andrew"=>{:color=>[], :gender=>[], :lives=>[]},
# "Alex"=>{:color=>[], :gender=>[], :lives=>[]}}



def nyc_pigeon_organizer(data)


  # make our data structure

    # get all the names
    names = data.values.map do |hash|
      hash.values
    end.flatten.uniq
    # ['adam', 'bob']

    # each name is the key, and the value of that name is an empty hash
    # hash = {}
    # go through each name
    # add each name into the hash
    # pigeon_list = {
      # "theo" => {},
      # "Peter Jr." => {},
  # }
  # each_with_object -> to remove sandwich code
    skeleton = names.each_with_object({}) do |name, initial_structure|
      #
      # [:color, :gender, :lives]

      attr_hash = data.keys.each_with_object({}) do |attribute, attributes_hash|
        attributes_hash[attribute] = []
      end
      initial_structure[name] = attr_hash
    end

    # for each pigeon
      # go through each of the colors, and see if their name
      # is in the corresponding array of colors
      # if it is, we need to shovel in the color
  data.keys.each_with_object(skeleton) do |characteristic, my_structure|
  # [:gender, :color, :lives]
    names.each do |pigeon|
      data[characteristic].keys.each do |trait|
        # color => "purple"
        if data[characteristic][trait].include?(pigeon)
          # ["david", "theo"]
          # characteristic => color,
          # trait => purple
          my_structure[pigeon][characteristic] << trait.to_s
        end
      end
      # [:purple, :blue, :red]
    end
  end

    # hash
    #     {"Theo"=>{:color=>[], :gender=>[], :lives=>[]},
    # "Peter Jr."=>{:color=>[], :gender=>[], :lives=>[]},
    # "Lucky"=>{:color=>[], :gender=>[], :lives=>[]},
    # "Ms. K"=>{:color=>[], :gender=>[], :lives=>[]},
    # "Queenie"=>{:color=>[], :gender=>[], :lives=>[]},
    # "Andrew"=>{:color=>[], :gender=>[], :lives=>[]},
    # "Alex"=>{:color=>[], :gender=>[], :lives=>[]}}






  # fill it in with the data
  #
end


# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
