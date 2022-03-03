//
//  TableDelegate.swift
//  iOS-Platform-Training
//
//  Created by Jann Zaplan on 2022-03-02.
//

import Foundation
import UIKit


class TableViewDelegate: NSObject, UITableViewDelegate {
    
       func tableView(_: UITableView, willDisplay: UITableViewCell, forRowAt: IndexPath){
           
           
       }
       func tableView(_: UITableView, indentationLevelForRowAt: IndexPath) -> Int
       {
           return 1
       }
       
       func tableView(_: UITableView, shouldSpringLoadRowAt: IndexPath, with: UISpringLoadedInteractionContext) -> Bool {
           return true
       }
}
