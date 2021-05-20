
//find factorial of n

func factorial(_ num:Int)->Int{
    if(num == 0 || num == 1){
        return 1
    }
    return num * factorial(num-1)
}
factorial(0)//1
factorial(1)//1
factorial(2)//2
factorial(3)//6
factorial(9)//362880
//factorial(99)// Error: The process has been left at the point where it was interrupted, use "thread return -x" to return to the state before expression evaluation.

