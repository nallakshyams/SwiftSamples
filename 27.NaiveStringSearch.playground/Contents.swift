
func search(_ longString:String,_ shortString:String)->Int{
    var count = 0
    for i in 0 ..< longString.count{
        for j in 0 ..< shortString.count{
            let longIndex = longString.index(longString.startIndex, offsetBy: i+j) //i+j because we need to compareadjacent characters on both the strings
            let shortIndex = shortString.index(shortString.startIndex,offsetBy: j)
            if(i+j >=  longString.count || longString[longIndex] != shortString[shortIndex]){
                break
            }
            if(j == shortString.count-1){
                count += 1
            }
        }
    }
    return count
}


search("hey ha hi ha","ha") //op 2
search("wowomgzomg","omg") //op 2
