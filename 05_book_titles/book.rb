class Book
    attr_reader :title

    def title=(new_title)

        little_words = ["the", "or", "and", "a", "an", "in", "of"]
        words = new_title.split(' ')
        words = [words[0].capitalize] + 
        words[1..-1].map do |word|
            if (little_words.include?(word))
                 word
            else
                word = word.capitalize
            end
        end
        @title = words.join(' ')
    end
end
