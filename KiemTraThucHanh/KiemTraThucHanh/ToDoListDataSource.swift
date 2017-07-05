//
//  ToDoListDataSource.swift
//  KiemTraThucHanh
//
//  Created by admin25 on 7/5/17.
//  Copyright © 2017 admin25. All rights reserved.
//

import UIKit

extension Cau3ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.list.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.list[section].toDoList.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.list[section].taskName
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        
        let taskName = self.list[section].toDoList[indexPath.row]
        
        let cell = self.tableViewToDoList.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        
        cell.setTaskName(taskName: taskName)
        
        return cell
    }
}
