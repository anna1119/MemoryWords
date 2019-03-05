//
//  Constants.swift
//  Li_Yuing_ISU
//
//  Created by Period One on 2018-01-19.
//  Copyright © 2018 Period One. All rights reserved.
//

import Foundation
var todoList:[String]?
func saveData(todoList:[String]) {
    UserDefaults.standard.set(todoList, forKey: "todoList")
}
func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String] {
        return todo
    } else {
        return nil
    }
}
