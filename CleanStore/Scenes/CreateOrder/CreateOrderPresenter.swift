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

protocol CreateOrderPresenterInput
{
  func presentSomething(response: CreateOrderResponse)
}

protocol CreateOrderPresenterOutput: class
{
  func displaySomething(viewModel: CreateOrderViewModel)
}

class CreateOrderPresenter: CreateOrderPresenterInput
{
  weak var output: CreateOrderPresenterOutput!
  
  // MARK: Presentation logic
  
  func presentSomething(response: CreateOrderResponse)
  {
    // NOTE: Format the response from the Interactor and pass the result back to the View Controller
    
    let viewModel = CreateOrderViewModel()
    output.displaySomething(viewModel)
  }
}
