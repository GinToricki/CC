def caesar_cipher(sentence, shift_num)
    letters = sentence.split("")
    new_sentence = ""
    for letter in letters do
        let = true
        if letter.ord > 64 && letter.ord < 91
            let = false
            if(letter.ord + shift_num > 90 )
                new_sentence += (letter.ord + shift_num - 90 + 64 ).chr
            else
                new_sentence += (letter.ord + shift_num).chr
            end
        end
        if letter.ord > 96 && letter.ord < 123
            let = false
            if(letter.ord + shift_num > 122 )
                new_sentence += (letter.ord + shift_num - 122 + 95 ).chr
            else
                new_sentence += (letter.ord + shift_num).chr
            end
        end
        if let
            new_sentence += letter
        end
    end
    
    puts new_sentence
end

caesar_cipher("What a string!", 5)