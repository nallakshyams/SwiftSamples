//mulitple pointers count unique characters
func countUniqueValues(_ nums:[Int])->Int{// input would be sorted numbers and we need to find unique no of chars
    var nums = nums//we ll change array in order to not to move fist pointer always
    if(nums.count <= 1){
        return nums.count
    }
    //declare pointers which will move from 0,1 till the end of the array
    var left = 0, right = 1
    while(right <= nums.count-1){
        if(nums[left] != nums[right]){
            left += 1
            nums[left] = nums [right] //simply playing with array
        }
        right += 1
    }
    return left+1
}

countUniqueValues([1,1,1,2,2,3]) //output 3
countUniqueValues([1,2,3,4]) //output 4
countUniqueValues([-1,-1,-2,-2,-3,-4,1]) //output 5
countUniqueValues([]) //output 0
countUniqueValues([1]) //output 1
