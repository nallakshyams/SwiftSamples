//Recursive approach to stringify the numbers in a nested dictionary
func stringifyNumbers(_ dict:[String:Any]) -> [String:Any]{
    var newDict : [String:Any] = dict //newDict to understand better
    for (key,value) in newDict{
        if let value = value as? Int{
            newDict[key] = "\(value)"
        }
        if let value = value as? [String:Any]{
            newDict[key] = stringifyNumbers(value) //you must assign it to a key
        }
    }
    return newDict
}

let obj : [String:Any] = [
    "num" : 1,
    "test" : [],
    "data" : [
        "val" : 4,
        "info" : [
            "isRight" : true,
            "random" : 66
        ]
    ]
]


print(stringifyNumbers(obj))//["num": "1", "test": [], "data": ["val": "4", "info": ["random": "66", "isRight": true]]]

