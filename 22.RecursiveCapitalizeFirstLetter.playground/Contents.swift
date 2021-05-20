//capitalize first character
func capitalizeFirst(_ arr:[String])->[String]{
    if(arr.count == 1){//base condition in recursive algorithm
        return [String( arr[0].prefix(1).uppercased() + arr[0].suffix(arr[0].count-1) )] //prefix ans suffix are useful to get first n characters and last n character. ofcourse we need to make the slice back to string
    }
    var newArray : [String] = [String( arr[0].prefix(1).uppercased() + arr[0].suffix(arr[0].count-1) )]
    newArray += capitalizeFirst(Array(arr[1..<arr.count])) // recursive call and also note converting array slice to array:)
    return newArray
}

capitalizeFirst(["car","taco","banana"]); // ["Car","Taco","Banana"]
