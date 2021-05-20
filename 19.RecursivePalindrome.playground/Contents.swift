//find a string is palindrome or not using recusrsive reversing the string
func isPalindrome(_ str:String)->Bool{
    func reverse(_ str:String)->String{//nested function
        if(str.count == 0 || str.count == 1){
            return str
        }
        return str.suffix(1) + reverse(String(str.prefix(str.count-1)))
    }
    return str == reverse(str)
}
isPalindrome("awesome") // false
isPalindrome("foobar") // false
isPalindrome("tacocat") // true
isPalindrome("amanaplanacanalpanama") // true
isPalindrome("amanaplanacanalpandemonium") // false
