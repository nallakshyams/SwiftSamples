//print nth number in th efibonacci series of n numbers using recursive approach
func fibonacci(_ n:Int) -> Int{
    if(n <= 0){
        return 0
    }
    if(n == 1){
        return 1
    }
    return fibonacci(n-1) + fibonacci(n-2)
}

fibonacci(4) // 3    fibonacci series :1,1,2,3,5,8,13,21,34,55..... to print the series we need to loop upto n and call the fibonacci function
fibonacci(10) // 55
fibonacci(20) // 6765

