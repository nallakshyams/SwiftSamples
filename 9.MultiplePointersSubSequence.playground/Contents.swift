//Multiple pointers pattern
//input would be 2 strs where 1st should be appeared in second in the same order (may not be consecutive)
func isSubsequence(_ str1:String, _ str2:String)->Bool{
    if(str1.count == 0 || str2.count == 0 || str1.count > str2.count){
        return false
    }
    var ptr1 = 0 , ptr2 = 0
    while ptr2 < str2.count {
        if(str1[str1.index(str1.startIndex,offsetBy: ptr1)] == str2[str2.index(str2.startIndex,offsetBy: ptr2)]){//get character at particular index from start index
            ptr1 += 1
        }
        if(ptr1 == str1.count){
            return true
        }
        ptr2 += 1
    }
    return false
}

isSubsequence("abc","abracadabra") //op true
isSubsequence("hello","hello world") //op true
isSubsequence("abc","acd") //op false
isSubsequence("abc","def") //op false


