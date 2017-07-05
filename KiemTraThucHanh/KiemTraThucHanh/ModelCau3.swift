//
//  ModelCau3.swift
//  KiemTraThucHanh
//
//  Created by admin25 on 7/5/17.
//  Copyright © 2017 admin25. All rights reserved.
//

import Foundation

class ToDo {
    var taskName: String
    var toDoList: [String]
    
    init(taskName: String, toDoList: [String]) {
        self.taskName = taskName
        self.toDoList = toDoList
    }
    
    class func sectionToDo1() -> ToDo{
        return ToDo(taskName: "Danh sach uu tien 1", toDoList: [
            "Do homework", "Played Football"
            ])
    }
    
    class func sectionToDo2() -> ToDo{
        return ToDo(taskName: "Danh sach uu tien 2", toDoList: [
            "Go shopping", "Write letter for Jamie", "Do all things above"
            ])
    }
    
    class func getToDoBySectionList() -> [ToDo]{
        return [self.sectionToDo1(), self.sectionToDo2()]
    }
}
