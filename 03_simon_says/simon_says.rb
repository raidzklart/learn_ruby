#write your code here
def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, num=2)
   string = "#{string} " * num
   string.delete_suffix!(' ')
end

def start_of_word(word, num=1)
    word[0..num-1]
end

def first_word(string)
    string.split(" ")[0]
end

def titleize(string)
    words = string.split.map do |word|
        if %w(the and over).include?(word)
            word
        else
            word.capitalize
        end
    end
    words[0].capitalize!
    words.join(' ')
end