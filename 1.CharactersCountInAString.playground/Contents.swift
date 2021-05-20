
//Prblem solving example: character count in a string:input would be string and output would be char count object
func charCount(string:String)->[Character:Int]?{
    var charCount:[Character:Int] = [:]
    if string.count == 0{
        return nil
    }
    let str = string.lowercased()
    for char in str{
        if(isAlphaNumeric(char: char)){
            charCount[char] = charCount[char] != nil ? charCount[char]!+1 : 1
        }else{
            return nil
        }
    }
    return charCount
}

func isAlphaNumeric(char:Character)->Bool{
    let asciiValue = char.asciiValue!
    return (asciiValue>47 && asciiValue<58) || (asciiValue>64 && asciiValue<91) || (asciiValue>96 && asciiValue<123)
}

print(charCount(string:"SrEeni"))//Optional(["i": 1, "r": 1, "e": 2, "n": 1, "s": 1])
print(charCount(string:"@@@@"))//nil
print(charCount(string:""))//nil
print(charCount(string:"a"))//Optional(["a": 1])
