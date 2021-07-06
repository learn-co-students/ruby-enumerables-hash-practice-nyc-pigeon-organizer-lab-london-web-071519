require 'pry'
def nyc_pigeon_organizer(data)
  newData = {}
  newArray = []
  newArray << data[:color].values
  names = newArray.flatten.uniq
  
    names.each do |name|
      newData[name] = {
        :color => [],
        :gender => [],
        :lives => []
      }
      end
      
    names.each do |name|
      data.each do |key, list|
        list.each do |info, nameS|
          if nameS.include?(name)
            newData[name][key] << info.to_s
        end
      end
    end
  end
  newData
end