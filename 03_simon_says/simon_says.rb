#write your code here
def echo(echo)
    "#{echo}"
end

def shout(echo)
    "#{echo}".upcase
end

def repeat(echo)
    "#{echo} " + "#{echo}"
end

def repeat(echo, nbr=2)
    ([echo] * nbr).join(" ")
end

def start_of_word(word, start)
    word[0...start]
end

def first_word(text)
    text.split(" ").first
end

def titleize(text) 
    words = text.split.map do |word|
        if %w(the and over).include?(word)
            word
        else
            word.capitalize
        end
    end
    words.first.capitalize!
    words.join(" ")
end