def translate(sentence)
  vowels = %w[a e i o u]
  words = sentence.split(' ')

  words = sentence.split(' ').map.with_index do |word, i|
    if vowels.include?(word[0])
      word + 'ay'
    else
      consonants = ''
      j = 0
      while j < word.length && !vowels.include?(word[j])
        consonants += word[j]
        if word[j] == 'q' && word[j + 1] == 'u'
          consonants += 'u'
          j += 1
        end
        j += 1
      end
      rest = word[consonants.length..-1]
      words[i] = rest + consonants + 'ay'
    end
  end

  words.join(' ')
end
