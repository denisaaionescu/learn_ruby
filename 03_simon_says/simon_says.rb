def echo(message)
    message
    end
def shout(message)
    message.upcase
end

def repeat(message, count = 2)
     ([message] * count).join(" ")
end
def start_of_word(word, n)
    word[0, n]
end
def first_word(words)
   word=words.split
   return word[0]
end
def titleize(word)
    non_title_words = ["and", "the", "over"]
    words = word.split(" ")
    words.each_with_index do |word, index|
        if index == 0 || !non_title_words.include?(word)
            words[index] = word.capitalize
        end
    end
    words.join(" ")
end
    
    
