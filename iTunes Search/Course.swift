//
//  Course.swift
//  iTunes Search
//
//  Created by sinbad on 19/2/19.
//  Copyright © 2019 com.devsloop.com. All rights reserved.
//

import Foundation
import SwiftyJSON

class Course {
    var name : String
    var code : Int
    var instructor : String
    var enrolled : Bool
    
    
    init(json : JSON){
        self.name = json["name"].stringValue
        self.code = json["code"].intValue
        self.instructor = json["instructor"].stringValue
        self.enrolled = json["enrolled"].boolValue
    }
}
