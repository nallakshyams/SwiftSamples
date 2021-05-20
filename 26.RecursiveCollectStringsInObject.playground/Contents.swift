//collect strings recursively

func collectStrings(_ dict:[String:Any])->[String]{
    var arr : [String] = []
    for (_,value) in dict{
        if let value = value as? String{
            arr.append(value)
        }
        if let value = value as? [String:Any]{
            arr += collectStrings(value)
        }
    }
    return arr
}

var obj1 : [String:Any] = [
    "stuff" : "foo",
    "data" : [
        "val" : [
            "thing" : [
                "info" : "bar",
                "moreInfo" : [
                    "evenMoreInfo" : [
                        "weMadeIt" : "baz"
                    ]
                ]
            ]
        ]
    ]
]

collectStrings(obj1) // ["foo", "bar", "baz"])
