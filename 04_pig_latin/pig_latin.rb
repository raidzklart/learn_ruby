#write your code here
def translate(string)
    words = string.split.map do |word|
        if word[0].match(/[aeiou]/i)
            word = "#{word}ay"
        elsif word[0..1].match(/\Aqu/i)
            word = "#{word[2..-1]}#{word[0..1]}ay"
        elsif word[0..2].match(/qu/i)
            index = word.index("qu")
            word = "#{word[index+2..-1]}#{word[0..1]}uay"
        elsif word[1].match(/[aeiou]/i)
            word = "#{word[1..-1]}#{word[0]}ay"
        elsif word[2].match(/[aeiou]/i)
            word = "#{word[2..-1]}#{word[0..1]}ay"
        else
            word = "#{word[3..-1]}#{word[0..2]}ay"
        end
    end
    words.join(" ")
end