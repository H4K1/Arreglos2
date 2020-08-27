
data = File.open('notas.data').readlines
  data = data.map{|i| i.chomp}
  data = data.map{|x| x.split(",")}

    for i in 0..data.length
      data[i].to_a.shift
    end

    for i in 0..data[0].length
     data[i] = data[i].map{|i| i.to_i}
      
    end

def nota_mas_alta(data)
  print data.max
end

nota_mas_alta(data[3])

