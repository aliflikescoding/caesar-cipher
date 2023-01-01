def caesar_cipher(string, key)
    string2 = ""
    string.each_char do |char|
        x = char.ord
        if (x >= 65 && x <= 90)
            y = x += key
            if (y > 90)
                y = y-90+65-1
                string2.concat(y.chr)
            else
                string2.concat(y.chr)
            end
        elsif (x >= 97 && x <= 122)
            y = x += key
            if (y > 122)
                y = y-122+97-1
                string2.concat(y.chr)
            else
                string2.concat(y.chr)
            end
        else
            string2.concat(x.chr)
        end
    end
    string2
end

p caesar_cipher("What a string!", 5) #=> "Bmfy f xywnsl!"
p caesar_cipher("ZzzAaa nice lol !@#$%^^", 3) #=> "CccDdd qlfh oro !@\#$%^^"