require 'pry'
def nyc_pigeon_organizer(data)
    new_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
       array.each do |name|
         binding.pry
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
       end
    end
  end
 new_hash
end