//ip :arr of sorted numbers and targetAvg 
//find avg  with  numbers inside array macthes with target
func averagePair(_ arr:[Double],_ targetAvg:Double)->Bool{
    //return if array length is less than or equals to 1
    if(arr.count <= 1){
        return false
    }
    //define left and right pointers
    var left = 0 , right = arr.count-1
    var tempAvg = 0.0
    while(left < right){
        tempAvg = (arr[left] + arr[right])/2;
        if(tempAvg == targetAvg){
            return true
        }else if (tempAvg < targetAvg){
            left += 1
        }else{
            right -= 1
        }
    }
    return false
}
averagePair([1,2,3,4], 2.5) //op true
averagePair([1,2,3,4], 2.1) //op false
averagePair([], 2) //op false
averagePair([-2,-1,1,2,3,4,8,12], 4.5) //op true
