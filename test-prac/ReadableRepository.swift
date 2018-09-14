//
//  ReadableRepository.swift
//  test-prac
//
//  Created by 佐藤賢 on 2018/09/14.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import Foundation

// 本番用の ReadableRepositoryContractプロトコル に準拠したクラス
class ReadableRepository: ReadableRepositoryContract {

    private let data: ImplicitInput.Data

    init(data: ImplicitInput.Data) {
        self.data = data
    }

    // プロトコル準拠部分
    // Data#double() に相当する
    func read() -> Int {
        return self.data.double()
    }
}
