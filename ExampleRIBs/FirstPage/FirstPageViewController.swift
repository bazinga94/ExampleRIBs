//
//  FirstPageViewController.swift
//  ExampleRIBs
//
//  Created by Jongho Lee on 2021/04/12.
//

import RIBs
import RxSwift
import UIKit

protocol FirstPagePresentableListener: class {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class FirstPageViewController: UIViewController, FirstPagePresentable, FirstPageViewControllable {

    weak var listener: FirstPagePresentableListener?
}
