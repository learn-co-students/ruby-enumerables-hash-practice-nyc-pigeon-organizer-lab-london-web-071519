require "pry"

def nyc_pigeon_organizer(data)
  puts data.class
  new_data = {}
#puts data
  data[:gender][:male].each do |set|

    new_data[set] = {:color => [], :gender => ["male"], :lives => []}
  end

  data[:gender][:female].each do |set|

    new_data[set] = {:color => [], :gender => ["female"], :lives => []}
  end

i=0
data[:color].each do |colors|
  i=0
      while i < colors[1].length

        if new_data[colors[1][i]][:color]
          new_data[colors[1][i]][:color].push << colors[0].to_s
        else
          new_data[colors[1][i]][:color] << colors[0].to_s
        end
        i+=1
      end
end



data[:lives].each do |locations|
      puts locations[0]
      puts locations[1].length
      j = 0
      while j < locations[1].length
        
        if new_data[locations[1][j]][:lives]
          new_data[locations[1][j]][:lives].push << locations[0].to_s
         else
           new_data[locations[1][j]][:lives] = locations[0].to_s
        end
        j+=1
      end
end
#
#   data[:lives]["Subway"].each do |location|
#     #binding.pry
#       #puts colors
#       if new_data[location][:lives]
#         puts new_data[:lives]
#         new_data[location][:lives].push << "Subway"
#       else
#         new_data[:lives]  << "Subway"
#       end
#     end
  #
  # data[:lives]["Central Park"].each do |location|
  #     #binding.pry
  #       #puts colors
  #       if new_data[location][:lives]
  #         puts new_data[:lives]
  #         new_data[location][:lives].push << "Central Park"
  #       else
  #         new_data[:lives]  << "Central Park"
  #     end
  #   end
  #
  #   data[:lives]["Library"].each do |location|
  #       #binding.pry
  #         #puts colors
  #         if new_data[location][:lives]
  #           puts new_data[:lives]
  #           new_data[location][:lives].push << "Library"
  #         else
  #           new_data[:lives]  << "Library"
  #       end
  #     end
  #
  #   data[:lives]["City Hall"].each do |location|
  #       #binding.pry
  #         #puts colors
  #         if new_data[location][:lives]
  #           puts new_data[:lives]
  #           new_data[location][:lives].push << "City Hall"
  #         else
  #           new_data[:lives]  << "City Hall"
  #       end
  #     end


  puts new_data

  new_data

end
