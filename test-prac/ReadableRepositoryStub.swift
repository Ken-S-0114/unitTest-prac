//
//  ReadableRepositoryStub.swift
//  test-prac
//
//  Created by 佐藤賢 on 2018/09/14.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import Foundation

// スタブを定義する
class ReadableRepositoryStub: ReadableRepositoryContract {

    private let base: Int

    init(base: Int) {
        self.base = base
    }

    // 偽物の振る舞いを行なっている箇所
    func read() -> Int {
        return self.base
    }
}
