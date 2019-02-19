//
//  NetworkManager.swift
//  iTunes Search
//
//  Created by sinbad on 19/2/19.
//  Copyright © 2019 com.devsloop.com. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class NetworkManager {
    
    private static let END_POINT = "https://mindylou.github.io/classes.json"
    
    
    static func getClass(completion: @escaping ([Course]) -> Void){
        Alamofire.request(END_POINT, method: .get).validate().responseJSON { response in
            switch response.result {
                case .success(let data) :
                    
                    let dataJSON = JSON(data)["data"].dictionaryValue
                    
                    print(dataJSON)
                    
                    if let classJSONArray = dataJSON["classes"]?.arrayValue {
                        var classArry  = [Course]()
                        for json in classJSONArray {
                            let newCourse = Course(json: json)
                            classArry.append(newCourse)
                        }
                        completion(classArry)
                    }
                case .failure(let error):
                    print(error.localizedDescription)
            }
        }
    }
    
}
