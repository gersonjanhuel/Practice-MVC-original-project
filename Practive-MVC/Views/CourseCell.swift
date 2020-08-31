//
//  CourseCell.swift
//  Practive-MVC
//
//  Created by Gerson Janhuel on 27/08/20.
//

import UIKit

class CourseCell: UITableViewCell {
    
    // our view is coupled with the Model 
    var course: Course! {
        didSet {
            textLabel?.text = course.name
            // logic sometimes blend with Views here 
            if course.number_of_lessons > 35 {
                detailTextLabel?.text = "Number of lessons: 35+"
            } else {
                detailTextLabel?.text = "Number of lessons: \(course.number_of_lessons)"
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
            
        // cell styling
        textLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        textLabel?.numberOfLines = 0
        detailTextLabel?.textColor = .black
        detailTextLabel?.font = UIFont.systemFont(ofSize: 20, weight: .light)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
