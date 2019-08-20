class Book
# write your code here
    def title=(str)
        output = ""
        words = str.split.map do |word|
            if %w(the and over in of a an).include?(word)
                word
            else
                word.capitalize
            end
        end
        words[0].capitalize!
        words.each_with_index do |word, i|
            output << "#{word} "
        end
        @title = output[0..-2]
    end

    def title
        @title
    end
end
