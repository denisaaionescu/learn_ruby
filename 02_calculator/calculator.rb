def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    sum = 0
    for i in array
        sum += i
    end
    return sum
end

def multiply(*args)
    p = 1
    for x in args
        p *= x
    end
    return p
end

def power(a, b)
    a**b
end

def factorial(n)
    if n == 0
        return 1
    else
        return n * factorial(n - 1)
    end
end