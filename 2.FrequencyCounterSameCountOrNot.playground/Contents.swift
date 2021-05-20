
//frequency counting by checking two arrays in a way that second array consists same no of numbers as in first as well as it should have all numbers squared with that of first array
func isSameAndSquared(_ first:[Int],_ second:[Int])->Bool{
    //check array empty ness
    if first.isEmpty || second.isEmpty || first.count != second.count {
        return false
    }
    //declare object to capture frequency
    var frequencyCounter : [Int:Int] = [:]
    for number in second{
        frequencyCounter[number] = (frequencyCounter[number] != nil) ? frequencyCounter[number]!+1 : 1
    }
    for number in first{
        if frequencyCounter[number*number] == nil || frequencyCounter[number*number] == 0 {
            return false
        }else {
            frequencyCounter[number*number]! -= 1;
        }
    }//using multiloop for time complexity o(n)
    return true
}


isSameAndSquared([1,2,4],[1,4,16]) // true
isSameAndSquared([1,2,4],[1,4,24]) // false
isSameAndSquared([1,2,4],[1,4,16,1]) // false
isSameAndSquared([1,2,4],[]) // false
isSameAndSquared([],[1,4,16]) // false
isSameAndSquared([15,4,5],[25,16,225]) // true

