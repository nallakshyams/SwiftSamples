//frequency counter pattern
func areThereDuplicates(_ arr:[Any])->Bool{
    if(arr.count < 1){
        return false
    }
    //declare frequency counter and loop over
    var counter : [String:Int] = [:]
    for i in arr{
        let str = "\(i)" //converting num to string
        if counter[str] != nil {
            return true
        } else{
            counter[str] = 1
        }
    }
    return false
}


areThereDuplicates([1,2,3]) //op false
areThereDuplicates([1,2,2]) //op true
areThereDuplicates(["a","b","c","a"]) //op true
areThereDuplicates(["a","b","c"]) //op false
