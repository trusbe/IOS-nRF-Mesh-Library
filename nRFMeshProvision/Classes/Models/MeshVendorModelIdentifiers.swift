//
//  MeshVendorModelIdentifiers.swift
//  nRFMeshProvision_Example
//
//  Created by Mostafa Berg on 13/04/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation

public enum MeshVendorModelIdentifiers: UInt32 {
    // NordicSemi Models
    case nordicSimpleOnOffServer = 0x00590000
    case nordicSimpleOnOffClient = 0x00590001
    
    // XunTong Custom
    case xuntongBeaconServer = 0x00591000
    case xuntongBeaconClient = 0x00591001
}
