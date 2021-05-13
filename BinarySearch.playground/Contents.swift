//binary search

func binarySearch(arr:[Int],key:Int)->String{
    if arr.count == 0{
        return "Key not found!!"
    }else if arr.count == 1 {
        return arr[0] == key ? "Key found at 0":"Key not found!!"
    }
    var startIndex = 0
    var endIndex = arr.count-1
    var middleIndex:Int
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

print(binarySearch(arr:[1,5,78,454,944],key:-1))// output :Key not found
print(binarySearch(arr:[1,5,78,454,944],key:1))// output :Key found at 0


