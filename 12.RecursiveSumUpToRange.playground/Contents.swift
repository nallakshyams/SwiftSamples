
//recursion which expects a number and returns sum of numbers from 1...n
func sumRange(_ num:Int) -> Int{
    if num == 0 || num == 1{
        return num
    }
    return num + sumRange(num-1)
}
//sumRange(6) //op 21
//sumRange(10) //op 21


