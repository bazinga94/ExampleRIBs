//
//  FirstPageBuilder.swift
//  ExampleRIBs
//
//  Created by Jongho Lee on 2021/04/12.
//

import RIBs

protocol FirstPageDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class FirstPageComponent: Component<FirstPageDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol FirstPageBuildable: Buildable {
    func build(withListener listener: FirstPageListener) -> FirstPageRouting
}

final class FirstPageBuilder: Builder<FirstPageDependency>, FirstPageBuildable {

    override init(dependency: FirstPageDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: FirstPageListener) -> FirstPageRouting {
        let component = FirstPageComponent(dependency: dependency)
        let viewController = FirstPageViewController()
        let interactor = FirstPageInteractor(presenter: viewController)
        interactor.listener = listener
        return FirstPageRouter(interactor: interactor, viewController: viewController)
    }
}
