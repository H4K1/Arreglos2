
data = File.open('notas.data').readlines
  data = data.map{|i| i.chomp}
  data = data.map{|x| x.split(",")}
  nombres = []

    data.length.times do |x|
        nombres.push(data[x][0])
    end
    
    for i in 0..data[0].length
      data[i].to_a.shift
    end

    for x in 0..data[0].length
     data[x] = data[x].map{|x| x.to_i}
      
    end
    
    nombres.length.times do |y|
        print "#{nombres[y]}: #{data[y].max}\n"
    end



