//
//  AppDelegateExtension.swift
//  nRFMeshProvision_Example
//
//  Created by Mostafa Berg on 27/04/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import nRFMeshProvision

extension UIApplicationDelegate {
    public func meshManager() -> MeshManager {
        return (UIApplication.shared.delegate as! AppDelegate).meshManager
    }
}
