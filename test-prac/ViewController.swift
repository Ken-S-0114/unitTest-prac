//
//  ViewController.swift
//  test-prac
//
//  Created by 佐藤賢 on 2018/09/14.
//  Copyright © 2018年 佐藤賢. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let repository = ReadableRepository(data: ImplicitInput.Data(value: 5))

        let implicitInput = ImplicitInput(readVia: repository)

        // ReadableRepositoryContract を経由して、 Dataクラス から値を取得する
        let result = implicitInput.reduce()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

