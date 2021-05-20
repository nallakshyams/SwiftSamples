//bubble up the largest element to last index on each iteration
func bubbleSort(_ arr:[Int]) ->[Int]{
    var arr = arr
    var swaps = false
    for i in stride(from: arr.count-1, to: 0, by: -1){ //from 4 to 1 if 5 elements are there
        swaps = false
        for j in stride(from: 0, to: i, by: 1){ //from 0 to max 3 if 5 elements are there
            if(arr[j] > arr [j+1]){
                let temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
                swaps = true
            }
        }
        if(!swaps){// if the elements are already in sorted order
            break
        }
    }
    return arr
}


bubbleSort([5,4,3,2,1]) //op [1,2,3,4,5]
bubbleSort([2,1,4,5,6]) //op [1, 2, 4, 5, 6]
bubbleSort([1,2,3,4,5])//op [1,2,3,4,5]
bubbleSort([1,2,3,3,4,5])//op [1,2,3,3,4,5]

