//
//  ImplicitInput.swift
//  test-prac
//
//  Created by 佐藤賢 on 2018/09/14.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import Foundation

class ImplicitInput {

    private let data: Data

    init() {
        // 1 ~ 10 までのランダムな数字を使って Data クラスを生成する
        let random = Int(arc4random_uniform(10) + 1)
        self.data = Data(value: random)
    }

    func reduce() -> Int {
        // クラス外から値を取得している
        return self.data.double() - 1
    }

    class Data {
        let value: Int

        init(value: Int) {
            self.value = value
        }

        func double() -> Int {
            return value * 2
        }
    }
}
