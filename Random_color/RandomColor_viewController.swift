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

		// Add buttons event
		randomColorView.reset_button.addTarget(self, action: #selector(reset_button_tap), for: .touchUpInside)
		randomColorView.changeColor_button.addTarget(self, action: #selector(changeColor_button_tap), for: .touchUpInside)
	}

	// reset button event
	@objc func reset_button_tap(_ sender: UIButton) {
		randomColorView.setBackground_color(color: .white)
		randomColorView.setRGB_label_text(text: "R: 255, G: 255, B: 255")
	}

	// changeColor button event
	@objc func changeColor_button_tap(_ sender: UIButton) {
		let randomRed = CGFloat.random(in: 0...1)
		let randomGreen = CGFloat.random(in: 0...1)
		let randomBlue = CGFloat.random(in: 0...1)
		let randomColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
		let RGB_text = "R: \(round(255 * randomRed)), G: \(round(255 * randomGreen)), B: \(round(255 * randomBlue))"

		randomColorView.setBackground_color(color: randomColor)
		randomColorView.setRGB_label_text(text: RGB_text)
	}
}

