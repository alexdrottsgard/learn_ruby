def translate(text)
    vowels = ['a', 'e', 'i', 'o', 'u']
    text.split.map do |word|
        if(vowels.include?(word.downcase[0]))
            word << "ay"
        else
            consonants = ""
            temp = ""
            until vowels.include?(word[0])
                consonants << word.slice!(0)
                temp = word
                if (word[0].include?("u") & consonants[-1].include?("q"))
                    consonants << word.slice!(0)
                end
            end
            temp << consonants << "ay"
            word = temp
        end
    end.join(' ')
end