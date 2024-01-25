var decryptedString = "";
    
    for (var i = 1; i <= string_length(argument1); i++) {
        var character = string_char_at(argument1, i);
        
        if (ord(character) >= 33 && ord(character) <= 130) {
            character = chr(ord(character) - real(string_char_at(argument0, i)));
        }
        
        decryptedString += character;
    }
    
    return decryptedString;