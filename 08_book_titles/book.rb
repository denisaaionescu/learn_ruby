class Book
  def title
    @title
  end

  def title=(new_title)
    small_words = ["a", "an", "and", "at", "but", "for", "in", "of", "on", "or", "the", "to"]
    words = new_title.split(" ")

    new_words = []

    words.each_with_index do |word, index|
      if index == 0
        new_word = word.capitalize
      elsif small_words.include?(word.downcase)
        new_word = word.downcase
      else
        new_word = word.capitalize
      end

      new_words.push(new_word)
    end

    @title = new_words.join(" ")
  end
end