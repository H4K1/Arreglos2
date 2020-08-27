  data = File.open('./ventas_base.db').read

    data = data.split(",")

    data_i = data.map{|i| i.to_i}

    # print data_i

    data_1 = []
    data_2 = []

    #Calcula primera mitad
    for i in 0..5
        data_1.push(data_i[i]) 
        data_1sum = data_1.inject{|sum, num| sum += num}.to_f
        data_1sum *= 1.1 
    end

    for i in 6..11
        data_2.push(data_i[i]) 
        data_2sum = data_1.inject{|sum, num| sum += num}.to_f
        data_2sum *= 1.2 
    end

    result = "#{data_1sum.round(2)}\n#{data_2sum.round(2)}"

    File.write('resultados.data', result)

