//capitalize each word in an array using recursion
 func capitalizeWords(_ arr:[String])->[String]{
    if(arr.count == 1){
        return [arr[0].uppercased()]
    }
    return [arr[0].uppercased()] + capitalizeWords(Array(arr[1..<arr.count]))
 }
 
let words = ["i", "am", "learning", "recursion"];
capitalizeWords(words); // ["I", "AM", "LEARNING", "RECURSION"]

