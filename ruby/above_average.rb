def main()
    test_cases = gets.chomp
    data = inputs(test_cases.to_i)
    averages = iterate(data)
    done = percentages(averages, data)
    printer(done)
end

def printer(data)
    temp = []
    counter = 0

    for x in data do
        temp = x.to_s.split(".")
        if temp[1].length > 2
            puts(x.to_s + "%") 
        else
            counter = temp[1].length
            print x.to_s
            while counter < 3
                print 0
                counter += 1
            end
            puts "%"
        end
        counter = 0
    end
end

def percentages(averages, data)
    counter = 0
    out = []

    for x in data do
        out.push(above_average(averages[counter], x))
        counter += 1
    end

    return out
end

def above_average(average, data)
    arr = data.split(" ")
    above = 0
    counter = 0

    for x in arr do
        if counter == 0
            counter = 1
        elsif x.to_i > average
            above += 1
        end
    end

    return (100 * above.fdiv(arr[0].to_i)).round(3)
end

def iterate(data)
    counter = 0
    arr = []
    temp = 0

    for x in data do
        arr.push(average(x))
        counter += 1
    end

    return arr
end

def average(arr)
    arr = arr.split(" ")
    length = 0
    counter = 0
    sum = 0

    for x in arr do
        if counter == 0
            counter = 1
            length = x.to_i
        else 
            sum += x.to_i
        end
    end

    return sum.fdiv(length)
end

def inputs(test_cases)
    x = 0
    arr = []

    while x < test_cases
        arr.push(gets.chomp)
        x += 1
        puts arr[x]
    end

    return arr
end

main()


# 1
# 32 5 50 50 70 80 100 7 100 95 90 80 70 60 50 3 70 90 80 3 70 90 81 9 100 99 98 97 96 95 94 93 91
