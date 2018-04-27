//
//  MeshManager.swift
//  nRFMeshProvision
//
//  Created by Mostafa Berg on 27/04/2018.
//

import Foundation

public class MeshManager {

    // MARK: - Mesh Manager Properties
    private var currentProxyNode: ProvisionedMeshNode?
    private var stateManager: MeshStateManager
    private var provisioner: Provisioner!
    
    // MARK: - Initilaization
    public init() {
        if MeshStateManager.stateExists() == false {
            stateManager = MeshStateManager.generateState()
        } else {
            if let aState = MeshStateManager.restoreState() {
                stateManager = aState
            } else {
                print("An error occured while restoring state")
                print("Will intentionally break")
                stateManager = MeshStateManager.restoreState()!
            }
        }
    }

    // MARK: - Implementation
    public func provisionNode(aNode: UnprovisionedMeshNode) {
        provisioner = Provisioner(withTargetNode: aNode)
    }
    // MARK: - Accessors
    public func setProxyNode(_ aProxyNode: ProvisionedMeshNode) {
        currentProxyNode = aProxyNode
    }

    public func proxyNode() -> ProvisionedMeshNode? {
        return currentProxyNode
    }
    
    // MARK: - Helpers
    // State creation
    // Key generation
    func generateNewKey() -> Data {
        let helper = OpenSSLHelper()
        let newKey = helper.generateRandom()
        return newKey!
    }
}
