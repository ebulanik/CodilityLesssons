//
//  main.swift
//  CodilityLessons
//
//  Created by Engin BULANIK on 13.09.2020.
//  Copyright © 2020 Engin BULANIK. All rights reserved.
//

import Foundation

/*
 https://app.codility.com/programmers/lessons/4-counting_elements/
 bigocheatsheet.com
 https://www.youtube.com/watch?v=Kg4bqzAqRBM

 Write a function:

 public func solution(_ A : inout [Int]) -> Int

 that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

 For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

 Given A = [1, 2, 3], the function should return 4.

 Given A = [−1, −3], the function should return 1.

 Write an efficient algorithm for the following assumptions:

 N is an integer within the range [1..100,000];
 each element of array A is an integer within the range [−1,000,000..1,000,000].
 */

var A: [Int]
A = [1, 3, 6, 4, 1, 2]
print (solution(&A))

A = [1, 2, 3]
print (solution(&A))

A = [-1, -3]
print (solution(&A))

A = [2]
print (solution(&A))


public func solution(_ A : inout [Int]) -> Int {

    let n = A.count
    var smalletstPositive = 1
    A.sort()

    for index in 0..<n {
        if A[index] == smalletstPositive {
            smalletstPositive = smalletstPositive + 1
        } else if A[index] > smalletstPositive{
            break
        }
    }
    return smalletstPositive
}
