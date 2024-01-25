var encryptionKey = "";
var encryptionKey2 = 3 // You can change this to any integer
var inputString = argument0;
var encryptedString = "";
for (var i = 1; i <= string_length(inputString); i++) {
	encryptionKey2 = irandom_range(1,5)
    var character = string_char_at(inputString, i);
	if(ord(character) == 34 ||ord(character) == 92 ||ord(character) == 124 ||ord(character) == 126 ||ord(character) == 241 ||ord(character) == 209){
		scr_toast(1, "ERROR unaccepted characters")
		return 0
		exit
		}
    if (ord(character) >= 33 && ord(character) <= 130) {
        character = chr(ord(character) + encryptionKey2);
    }
	encryptionKey=encryptionKey+string(encryptionKey2)
    encryptedString += character;
}
encryptedString += encryptionKey
encryptedString = base64_encode(encryptedString)
encryptedString = delete_symbol(encryptedString)
return encryptedString