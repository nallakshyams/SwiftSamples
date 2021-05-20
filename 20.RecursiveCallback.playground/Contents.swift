//if a single value in the array returns true on the callback then return true

func someRecursive( _ arr:[Int],_ callBack: (Int)->Bool )->Bool{
    if(arr.count == 0){
        return false
    }
    return isOdd(value: arr[0]) || someRecursive(Array(arr[1..<arr.count]), isOdd)
}


func isOdd(value:Int)->Bool{
    return value % 2 != 0
}
// SAMPLE INPUT / OUTPUT

someRecursive([1,2,3,4], isOdd) // true
someRecursive([4,6,8,9], isOdd) // true
someRecursive([4,6,8], isOdd) // false
someRecursive([4,6,8,0], {(value:Int)->Bool in
                return value % 2 != 0}); // false
