//
//  RandomColor_view.swift
//  Random_color
//
//  Created by seongjun cho on 5/7/25.
//

import UIKit
import SnapKit

class RandomColor_view: UIView {
	let background_view: UIView = {
		let view = UIView()

		view.backgroundColor = .white

		return view
	}()

	let RGB_label: UILabel = {
		let label = UILabel()

		label.backgroundColor = .white
		label.textColor = .black
		label.text =  "R: 255, G: 255, B: 255"

		return label
	}()

	let changeColor_button: UIButton = {
		let button = UIButton()

		button.setTitle("Change Color", for: .normal)
		button.setTitleColor(.white, for: .normal)
		button.backgroundColor = .systemBlue

		return button
	}()

	let reset_button: UIButton = {
		let button = UIButton()

		button.setTitle("Reset", for: .normal)
		button.setTitleColor(.white, for: .normal)
		button.backgroundColor = .systemBlue

		return button
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)

		self.backgroundColor = .white
		
		addSubview(background_view)
		background_view.addSubview(RGB_label)
		background_view.addSubview(changeColor_button)
		background_view.addSubview(reset_button)

		background_view.snp.makeConstraints { make in
			make.top.left.right.bottom.equalToSuperview()
		}

		RGB_label.snp.makeConstraints { make in
			make.centerX.equalToSuperview()
			make.centerY.equalToSuperview()
		}

		changeColor_button.snp.makeConstraints { make in
			make.bottom.equalToSuperview().inset(50)
			make.left.equalToSuperview().inset(20)
			make.right.equalTo(super.snp.centerX).inset(10)
			make.height.equalTo(50)
		}

		reset_button.snp.makeConstraints { make in
			make.bottom.equalToSuperview().inset(50)
			make.right.equalToSuperview().inset(20)
			make.height.equalTo(50)
			make.left.equalTo(super.snp.centerX).offset(10)
		}
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// Set background_view's background color
	func setBackground_color(color: UIColor) {
		background_view.backgroundColor = color
	}

	// Set RGB_label_text
	func setRGB_label_text(text: String) {
		RGB_label.text = text
	}
}
