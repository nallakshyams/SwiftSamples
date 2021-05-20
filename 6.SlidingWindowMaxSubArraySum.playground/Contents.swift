//find biggest sum of cons n nums in an array
func maxSubArrSum(_ arr:[Int],_ num:Int)->Int?{
    //return nil incase arr length is less than n or array length is zero
    if(arr.count == 0 || num == 0 || arr.count < num){
        return nil
    }
    //decalre a variable which will hold the initial sum
    var maxSum = 0
    //loop over the arr to find initial sum
    for i in 0..<num{
        maxSum += arr[i]
    }
    var tempSum = maxSum
    //apply sliding window pattern by addition and substraction
    for i in num..<arr.count{
        tempSum = tempSum - arr[i-num] + arr[i]
        maxSum = maxSum > tempSum ? maxSum : tempSum
    }
    return maxSum
}
maxSubArrSum([1,5,3,2,8,9],3) //output 19
maxSubArrSum([1,5,3,2],5) //output nil
maxSubArrSum([1,2,3],0) //output nil
maxSubArrSum([1,2,3],1) //output 3
maxSubArrSum([1,2,3],2) //output 5


