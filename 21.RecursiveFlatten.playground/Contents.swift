//flatten an array using recursive pattern and also learn about conditional down casting using as?

func flatten(_ arr:[Any])->[Int]{
    var newArray : [Int] = []
    for i in arr{
        if let newInt = i as? Int{
            newArray.append(newInt)
        }
        if let subArr = i as? [Any] {
            newArray.append( contentsOf: flatten(subArr) )
        }
    }
    return newArray
}

flatten([1,2,[[3,4],[5,6,[7]]],8])// o/p [1, 2, 3, 4, 5, 6, 7, 8]


