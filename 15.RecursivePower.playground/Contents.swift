//Recursive power of integer
func power(_ num:Int,_ exponent:Int)->Int{
    if(exponent == 0){
        return 1
    }
    if(exponent == 1){
        return num
    }
    return num * power(num, exponent-1)
}
power(2, 0) //op 1
power(2, 1) //op 2
power(2, 7) //op 128
power(3, 3) //op 27

