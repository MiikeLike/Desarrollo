//
//  pageViewController.swift
//  Desarrollo
//
//  Created by Mikel Valle on 6/11/22.
//

import UIKit

class pageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let pageOne = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "pageOne")

    }
}

