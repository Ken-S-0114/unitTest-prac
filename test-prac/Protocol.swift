//
//  Protocol.swift
//  test-prac
//
//  Created by 佐藤賢 on 2018/09/14.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import Foundation

protocol ReadableRepositoryContract {
    // Data#double() に相当する
    func read() -> Int
}
