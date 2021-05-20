//recursively find the product of all the integers in the array

func productOfArray(_ arr:[Int])->Int{
    if(arr.count == 1){
        return arr[0]
    }
    return arr[0] * productOfArray(Array(arr[1..<arr.count]))
}

productOfArray([1,2,3]) //op 6
productOfArray([1,2,3,11]) //op 66
