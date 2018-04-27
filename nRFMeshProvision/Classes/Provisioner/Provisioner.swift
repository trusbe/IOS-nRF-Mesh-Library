//
//  Provisioner.swift
//  nRFMeshProvision
//
//  Created by Mostafa Berg on 27/04/2018.
//

import Foundation

struct Provisioner {
    // MARK: - Properties
    let targetNode: UnprovisionedMeshNode
    
    // MARK: - Initialization
    init(withTargetNode aTargetNode: UnprovisionedMeshNode) {
        targetNode = aTargetNode
    }
    
    // MARK: - Implementation
    public func start(withProvisioningData someData: ProvisioningData) {
        targetNode.provision(withProvisioningData: someData)
    }
}
