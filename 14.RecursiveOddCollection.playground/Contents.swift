//recursively collect odd values from an array of integers
func collectOddValues(_ arr:[Int])->[Int]{
    var newArr:[Int] = []
    if(arr.count == 0){
        return newArr
    }
    if(arr[0] % 2 != 0){
        newArr += [arr[0]] //adding an element using +
    }
    newArr += collectOddValues(  Array(arr.dropFirst())  ) //drop first is like slicing an array
    return newArr
}

collectOddValues([1,2,3,4,5,8,7]) // [1,3,5,7]

