//
//  CourseTableViewCell.swift
//  iTunes Search
//
//  Created by sinbad on 19/2/19.
//  Copyright © 2019 com.devsloop.com. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

  
    @IBOutlet weak var nameLabel: UILabel!    
    @IBOutlet weak var codeLabe: UILabel!
    @IBOutlet weak var instructor: UILabel!
    
    
    func setup(with course : Course){
        nameLabel.text = course.name
        codeLabe.text = "\(course.code)"
        instructor.text  = course.instructor
        
        if course.enrolled {
            contentView.backgroundColor = UIColor.red
        } else {
            contentView.backgroundColor = UIColor.green
        }
    }

}
