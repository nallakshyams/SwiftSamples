
//reverse a string recursively

func reverse(_ str:String) -> String{
    if(str.count == 1 || str.count == 0){
        return str
    }
    return str.suffix(1) + reverse(String(str.prefix(str.count-1))) //slicing at the end using prefix and taking first character using suffix
    
    //alternative way below
    
   // return String(str[ str.index(str.startIndex, offsetBy: str.count-1) ] ) + reverse(String(str.prefix(str.count-1)))
    
}

reverse("awe"); //ewa
reverse("rithmschool") // 'loohcsmhtir'





