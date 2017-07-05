//
//  TaskCell.swift
//  KiemTraThucHanh
//
//  Created by admin25 on 7/5/17.
//  Copyright © 2017 admin25. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var taskName: UITextView!
    
    func setTaskName(taskName: String) {
        self.taskName.text = taskName
    }
    
}
