//
//  ViewController.swift
//  Random_color
//
//  Created by seongjun cho on 5/7/25.
//

import UIKit

class RandomColor_viewController: UIViewController {

	private let randomColorView = RandomColor_view()

	override func loadView() {
		   view = randomColorView
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
}

