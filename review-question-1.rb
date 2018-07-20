## QUESTION 1
require "pry"

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
  # pokemon[0][:abilities][0][:ability][:url]
# How would you return the first pokemon with base experience over 40?
  def first_over_40(poke_arr)
    all_over_40(poke_arr)[0]
  end
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
def all_over_40(poke_arr)
  pokes_over_40 = []
  poke_arr.each do |p_hash|
    p_hash.each do |property, value|
      if property == :base_experience
        # binding.pry
        if value > 40
          pokes_over_40 << p_hash[:name]
        end
      end
    end
  end
  pokes_over_40
end
# How would you return an array of all of the pokemon's names?
def all_names(poke_arr)
  pokes_names = []
  poke_arr.each do |p_hash|
    p_hash.each do |property, value|
      if property == :name
        pokes_names << value
      end
    end
  end
  pokes_names
end
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.

def weight(poke_arr)
  heavys = []
  poke_arr.each do |p_hash|
    p_hash.each do |property, value|
      if property == :weight
        # binding.pry
        if value > 60
          heavys << p_hash[:name]
        end
      end
    end
  end
  heavys.size > 0
end

binding.pry
nil
