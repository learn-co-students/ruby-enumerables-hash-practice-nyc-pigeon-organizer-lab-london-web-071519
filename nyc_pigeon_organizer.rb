require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  data_by_name = {}

  data.each do |attribute1, attribute2|
# binding.pry
    attribute2.each do |info, names|
# binding.pry
      names.each do |name|
# binding.pry
        data_by_name[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  data_by_name.each do |name, attribute|
    data.each_pair do |attribute2, type|
      type.each do |a, b|
# binding.pry
        if b.include?(name)
          data_by_name[name][attribute2] << a.to_s
        end
      end
    end
  end
  # data_by_name.each do |p_name, info|
  #   data.each do |attribute1, attribute2|
  #     attribute2.each do |info, names|
  #       names.each_with_index do |name, i|
  #         if name == p_name
  #           data_by_name[p_name][:colour][i] = info.to_s
  #         end
  #       end
  #     end
  #   end
  # end
  data_by_name
end
