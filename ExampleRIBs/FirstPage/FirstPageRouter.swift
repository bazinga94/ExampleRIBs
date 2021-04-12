//
//  FirstPageRouter.swift
//  ExampleRIBs
//
//  Created by Jongho Lee on 2021/04/12.
//

import RIBs

protocol FirstPageInteractable: Interactable {
    var router: FirstPageRouting? { get set }
    var listener: FirstPageListener? { get set }
}

protocol FirstPageViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class FirstPageRouter: ViewableRouter<FirstPageInteractable, FirstPageViewControllable>, FirstPageRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: FirstPageInteractable, viewController: FirstPageViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
