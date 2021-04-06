def bubbleSort(arr) 
    n = arr.length()
    min=0
    max=0
    for i in (1..n)
        for j in 0..n-i-1
            if arr[j] > arr[j+1] 
                arr[j], arr[j+1] = arr[j+1], arr[j]
            end
        end
    end
    for i in 0..n-1
        if i==0
            min=arr[i]
          puts  "minimum number:#{min}"
        end
        if i==n-1
             max=arr[i]
             puts  "maximum number:#{max}"
        end
    end
    puts "diff of min and max: #{max-min}"
end

arr = [64, 34, 25, -50, 22, 11, 90] 
bubbleSort(arr)
