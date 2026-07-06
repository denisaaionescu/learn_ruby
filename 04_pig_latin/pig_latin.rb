def translate(word)
    vowels = ["a", "e", "i", "o", "u"]
    words = word.split(" ")

    for i in 0...words.length
        w = words[i]
        if vowels.include?(w[0])
            words[i] = w + "ay"
        else
            consonants = ""
            j = 0
            while j < w.length && !vowels.include?(w[j])
                consonants += w[j]
                if w[j] == "q" && w[j + 1] == "u"
                    consonants += "u"
                    j += 1
                end
                j += 1
            end
            rest = w[consonants.length..-1]
            words[i] = rest + consonants + "ay"
        end
    end

    words.join(" ")
end