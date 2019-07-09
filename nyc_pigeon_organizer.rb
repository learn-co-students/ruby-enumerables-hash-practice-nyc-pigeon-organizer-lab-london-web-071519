def nyc_pigeon_organizer(data)
 f= {}
 a = []
 a << data[:color].values
 b = a.flatten.uniq

 b.each { |name| f["#{name}"] = {:color => [], :gender => [], :lives =>[]} }
 b.each{ |bname|
  data.each{ |label, list|
    list.each{ |info, names|
      if names.include?(bname)
        f[bname][label] << info.to_s
      end
     }
   }
  }
f
end
