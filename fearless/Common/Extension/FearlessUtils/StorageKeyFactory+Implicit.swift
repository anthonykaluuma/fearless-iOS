import Foundation
import FearlessUtils

extension StorageKeyFactoryProtocol {
    func updatedDualRefCount() throws -> Data {
        try createStorageKey(moduleName: "System",
                             storageName: "UpgradedToDualRefCount")
    }

    func accountInfoKeyForId(_ identifier: Data) throws -> Data {
        try createStorageKey(moduleName: "System",
                             storageName: "Account",
                             key: identifier,
                             hasher: .blake128Concat)
    }

    func bondedKeyForId(_ identifier: Data) throws -> Data {
        try createStorageKey(moduleName: "Staking",
                             storageName: "Bonded",
                             key: identifier,
                             hasher: .twox64Concat)
    }

    func stakingInfoForControllerId(_ identifier: Data) throws -> Data {
        try createStorageKey(moduleName: "Staking",
                             storageName: "Ledger",
                             key: identifier,
                             hasher: .blake128Concat)
    }

    func activeEra() throws -> Data {
        try createStorageKey(moduleName: "Staking",
                             storageName: "ActiveEra")
    }
 }
