require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = Hash.new

  data[:gender].each do |k,v|
  	v.each do |pigeon_name|
  		pigeon_list[pigeon_name] = {:gender => [k.to_s], :color => [], :lives => []}
  	end
  end

  data[:color].each do |color, pigeons_arr|
  	pigeons_arr.each do |pigeon_name|
  		pigeon_list[pigeon_name][:color] << color.to_s
  	end
  end

  data[:lives].each do |location, pigeons_arr|
  	pigeons_arr.each do |pigeon_name|
  		pigeon_list[pigeon_name][:lives] << location
  	end
  end

  pigeon_list

end