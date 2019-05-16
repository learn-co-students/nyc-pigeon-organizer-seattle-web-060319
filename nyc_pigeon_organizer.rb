def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  data.each do |feature, detail|
    detail.each do |item, names|
      names.each do |name| 
        hash[name] = {}
      end
    end
  end
  
  data.each do |feature, detail|
    detail.each do |item, names|
      names.each do |name| 
        if hash[name].key?(feature) 
          hash[name][feature] << item.to_s
        else 
          hash[name][feature] = [item.to_s]
        end
      end
    end
  end
  hash
end

