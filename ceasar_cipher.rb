def caesar_cipher(string, rotation)
    output_string = ''
    string.split("").each do |char|
        if (char.ord >= 97 && char.ord <= 122)
            new_char = (((char.ord - 97 + rotation) % 26) + 97).chr
            output_string += new_char
        elsif (char.ord >= 65 && char.ord <= 90)
            new_char = (((char.ord - 65 + rotation) % 26) + 65).chr
            output_string += new_char
        else
            output_string += char
        end
    end
    output_string
end

puts caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"