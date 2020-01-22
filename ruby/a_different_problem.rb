def main()
    input = input()
    answer = absolute(input)
    printer(answer)
end

def printer(answer)

    for x in answer do
        puts(x)
    end
end

def absolute(input)
    answer = []

    for x in input do
        numbers = x.split(" ")
        total = numbers[0].to_i - numbers[1].to_i
        answer.push(total.abs)
    end

    return answer
end

def input()
    arr = []

    while input = gets
        arr.push(input)
    end
    
    return arr
end

main()