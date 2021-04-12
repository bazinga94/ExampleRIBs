//
//  AppComponent.swift
//  ExampleRIBs
//
//  Created by Jongho Lee on 2021/04/12.
//

import Foundation
import RIBs

class AppComponent: Component<EmptyDependency>, RootDependency {

	init() {
		super.init(dependency: EmptyComponent())
	}
}
