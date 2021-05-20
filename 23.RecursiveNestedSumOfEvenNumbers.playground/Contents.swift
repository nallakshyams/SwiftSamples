//recursively parse the dictionary and add all even numbers
func nestedEvenSum(_ dict: [String:Any]) -> Int{
    var evenSum = 0;
    for (_, value) in dict{//parsing dictionary
        if let value = value as? Int{//conditional downcasting
            if(value % 2 == 0){
                evenSum += value
            }
        }
        if let value = value as? [String:Any]{
           evenSum += nestedEvenSum(value)
        }
    }
    return evenSum
}

//i/p
var obj1 : [String : Any] = [
  "outer" : 2,"obj" : [
    "inner" : 2,
    "otherObj" : [
      "superInner" : 2,
      "notANumber": true,
      "alsoNotANumber": "yup"
    ]
  ]
]


var obj2 : [String:Any] = [
  "a" : 2,
  "b" : ["b" : 2, "bb" : ["b" : 3, "bb" : ["b" : 2]]],
  "c" : ["c" : ["c": 2], "cc": "ball" , "ccc" : 5],
  "d" : 1,
  "e": ["e" : ["e" : 2], "ee" : "Car"]
]

nestedEvenSum(obj1); // 6
nestedEvenSum(obj2); // 10
