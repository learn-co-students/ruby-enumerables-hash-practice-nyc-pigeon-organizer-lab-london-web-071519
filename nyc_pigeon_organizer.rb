require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  data_by_name = {}

  data.each do |attribute1, attribute2|
    attribute2.each do |info, names|
      names.each do |name|
        data_by_name[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  data_by_name.each do |name, attribute|
    data.each_pair do |attribute2, type|
      type.each do |a, b|
        if b.include?(name)
          data_by_name[name][attribute2] << a.to_s
        end
      end
    end
  end
  data_by_name
end
