def reverser
    text = yield
    words = text.split(" ")
    words.each { |word| word.reverse! }
    words.join(" ")
end

def adder(n = 1)
    yield + n
end
def repeater(count = 1)
    count.times do
        yield
    end
end  