//binary search:input would be sorted numbers and an key to be found

func binarySearch(_ arr:[Int],_ key:Int)->String{
    if arr.count == 0{
        return "Key not found!!"
    }else if arr.count == 1 {
        return arr[0] == key ? "Key found at 0":"Key not found!!"
    }
    var startIndex = 0,endIndex = arr.count-1, middleIndex:Int
    while startIndex <= endIndex {
        middleIndex = (startIndex+endIndex)/2
        if key == arr[middleIndex]{
            return "Key found at \(middleIndex)"
        }else if key < arr[middleIndex]{
            endIndex = middleIndex-1
        }else{
            startIndex = middleIndex+1
        }
    }
    return "Key not found"
}
binarySearch([1,2,3,4], 4) //output 3
binarySearch([1,2,3,4], 5) //output not found
binarySearch([1,2,3,4], 1) //output 0
binarySearch([1,2,3,4,5], 3) //output 2
binarySearch([], 5) //output not found
binarySearch([5], 5) //output 0
binarySearch([5], 6) //output not found


