//sliding window pattern
//input would be array of numbers and a number which denotes length of the subarray and o/p is max sum of consecutive numbers in sub array

func maxSubarraySum(_ arr:[Int],_ n:Int)->Int?{
    //check negative scenarios
    if(arr.count == 0 || n > arr.count){
      return nil
    }
    var maxSum = 0
    for i in 0..<n{
        maxSum += arr[i]
    }
    var temSum = maxSum
    for i in n...arr.count-1{
        temSum = temSum - arr[i-n] + arr[i]  //sliding window
        maxSum = maxSum > temSum ? maxSum : temSum
    }
    return maxSum
}

maxSubarraySum([100,200,300,400],2)//output 700
maxSubarraySum([1,4,2,10,23,3,1,0,20],4)//output 39
maxSubarraySum([-3,4,0,-2,6,-1],2)//output 5
maxSubarraySum([3,-2,7,-4,1,-1,4,-2,1],2)//output 5
maxSubarraySum([2,4],3)//output 5

