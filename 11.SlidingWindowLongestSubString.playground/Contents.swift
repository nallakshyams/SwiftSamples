//logest sub str lenghth with distinct chars using sliding window pattern
func findLongestSubString(_ str:String)-> Int?{
    if(str.count == 0){
        return 0
    }
    var freshIndex = 0 // from where the NEW distinct charactered string will start from
    var longestSubStrLength = 0 //compare old substr length and set this accordingly
    var characterPositions : [Character:Int] = [:] // store each character position with recent visited index of the character
    for i in 0..<str.count{
        let char = str[str.index(str.startIndex, offsetBy: i)] //**GET A CHARACTER AT SPECIFIC INDEX
        //if the character visited already and its crossing the fresh index(fresh index will change based on other character mulptiple occurances also)
        if(characterPositions[char] != nil && characterPositions[char]! > freshIndex){
            freshIndex = characterPositions[char]!//new sub str starts from earlier position of character + 1
        }
        //we are adding 1 because we are dealing with indices
        if(i-freshIndex+1 > longestSubStrLength){
            longestSubStrLength = i-freshIndex+1
        }
        characterPositions[char] = i+1 // update the charactes latest absolute position
        print("\n freshIndex:\(freshIndex) \n longestSubStrLength :\(longestSubStrLength) \n characterPositions :  \(characterPositions)")
    }
    return longestSubStrLength
}

findLongestSubString("rithmschoabcdefgijk") //op 12
findLongestSubString("bbbbb") //op 1
findLongestSubString("") //op 0
findLongestSubString("rithmschoool") //op 7
