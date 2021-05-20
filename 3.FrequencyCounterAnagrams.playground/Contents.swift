//find whether two strings are anagrams or not using frequency counter pattern
//anagram is a word derived from another word by using the letters resides in that latter

func areAnagrams(_ str1:String,_ str2:String )->Bool{
    //check emptyness and lengths
    if(str1.count == 0 || str2.count == 0 || str1.count != str2.count){
        return false
    }
    var counter : [Character:Int] = [:] //frequency counter
    for char in str1{
        counter[char] = counter[char] != nil ? counter[char]! + 1 : 1
    }
    for char in str2{
        if(counter[char]! == 0){
            return false
        }else{
            counter[char]! -= 1
        }
    }// o(n) complexity
    return true
}

print(areAnagrams("cinema","iceman"))//true
print(areAnagrams("azz","zaa"))//false
print(areAnagrams("anagram","nagaram"))//true
print(areAnagrams("texttwisttime","timetwisttext"))//true
print(areAnagrams("hello","olloh"))//false
