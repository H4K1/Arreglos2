
data = File.open('./ventas_base.db').read

def proyecciones(data, inicio, fin, aum)  

    data = data.split(",")

    data_i = data.map{|i| i.to_i}

    # print data_i
    data_1 = []
    #Calcula primera mitad
    for i in inicio..fin
        data_1.push(data_i[i]) 
        data_1sum = data_1.inject{|sum, num| sum += num}.to_f
        data_1sum *= aum 
    end
    return data_1sum

end

result = proyecciones(data, 0, 5, 1.1).round(2).to_s
result += "\n#{proyecciones(data, 6, 11, 1.2).round(2).to_s}" 
File.write('resultado.data', result)
