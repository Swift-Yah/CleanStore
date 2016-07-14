//
//  CreateOrderPresenter.swift
//  CleanStore
//
//  Created by Rafael Ferreira on 7/13/16.
//  Copyright (c) 2016 Swift Yah. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol CreateOrderPresenterInput {
	func presentExpirationDate(response: CreateOrder_FormatExpirationDate_Response)
}

protocol CreateOrderPresenterOutput: class {
	func displayExpirationDate(viewModel: CreateOrder_FormatExpirationDate_ViewModel)
}

class CreateOrderPresenter: CreateOrderPresenterInput {
	weak var output: CreateOrderPresenterOutput!

	// MARK: Expiration Date

	let dateFormatter: NSDateFormatter = {
		let dateFormatter = NSDateFormatter()

		dateFormatter.dateStyle = .ShortStyle
		dateFormatter.timeStyle = .NoStyle

		return dateFormatter
	}()

	func presentExpirationDate(response: CreateOrder_FormatExpirationDate_Response) {
		let date = dateFormatter.stringFromDate(response.date)
		let viewModel = CreateOrder_FormatExpirationDate_ViewModel(date: date)

		output.displayExpirationDate(viewModel)
	}
}
