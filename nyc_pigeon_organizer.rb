def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key,values|
    values.each do |value,names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][key] ||= []
        pigeon_list[name][key] << value.to_s
      end
    end
  end
  pigeon_list
end
