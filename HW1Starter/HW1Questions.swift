//
//  HW1Questions.swift
//  HW1Starter
//
//  Created by Justin Wong on 9/8/24.
//

import Foundation

class HW1Questions {
    
    // MARK: - Task 1A. File Names
    
    /// Get the file names of a certain given length, excluding the file type name.
    /// - Parameters:
    ///   - filenames: An array of file names
    ///   - count: Target length of file name (excluding the file type)
    /// - Returns: An array of file names whose excluded file type length matches `count`.
    func getFileNames(for filenames: [String], withCount count: Int) -> [String] {
        var new_files: [String] = []
        for files in filenames{
            let mod_file = files.split(separator: ".")
            let word = mod_file[0]
            print(word)
            let length = mod_file[0].count
            if length == count{
                new_files.append(String(word) + "." + String(mod_file[1]))
            }
        }
        return new_files
    }
    
    
    
    // MARK: - Task 1B. Escape
    
    enum Direction {
        case left
        case right
        case up
        case down
    }
    
    /// Returns a boolean if we can escape given the following list of instructions and locations.
    /// - Parameters:
    ///   - directions: An array of instructions detailing how to escape
    ///   - startingIndex: The starting index
    ///   - escapeIndex: The ending index
    /// - Returns: A boolean. True if we can escape. False otherwise.
    func canEscape(withDirections directions: [[Direction]], startingIndex: Int, escapeIndex: Int) -> Bool {
        for listss in directions{
            var num = startingIndex
            for direction in listss {
                if direction == .right{
                    num += 1
                }
                else if direction == .left{
                    num -= 1
                }
                else{
                    break
                }
            }
            if num == escapeIndex{
                return true
            }
        }
        return false
    }
    
}
