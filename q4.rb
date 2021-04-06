def data(data)
    data=data.values
    n = data.length()
    for i in (1..n)
        for j in 0..n-i-1
            if data[j] > data[j+1] 
                data[j], data[j+1] = data[j+1], data[j]
            end
        end
    end
    for i in 0..n-1
        print "#{data[i]} "
    end
end

data({name: "duggu" , name2: "nonu" , name3: "anki"})