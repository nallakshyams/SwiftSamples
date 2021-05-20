//multiple pointer pattern partly sliding window or devide and conc

func sumZeroFirstPair(_ nums:[Int])->[Int]?{//input would be sorted numbers
    var left = 0,right = nums.count-1 //multiple pointers pattern
    while left < right {
        let sum = nums[left] + nums[right]
        if(sum == 0){
            return [nums[left],nums[right]]
        }else if(sum < 0){
            left += 1
        }else{
            right -= 1
        }
    }
    return nil
}
sumZeroFirstPair([-3,-2,-1,0,1,2,3]) //-output is [-3,3]
sumZeroFirstPair([-3,-2,-1,0]) //-output is nil
sumZeroFirstPair([0,1,2,3]) //-output is nil
sumZeroFirstPair([]) //-output is nil
sumZeroFirstPair([-3,-2,-1,0,1,2]) //-output is [-3,3]
