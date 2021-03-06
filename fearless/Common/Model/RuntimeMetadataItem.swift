import Foundation
import RobinHood

struct RuntimeMetadataItem: Codable & Equatable {
    enum CodingKeys: String, CodingKey {
        case chain
        case version
        case metadata
    }

    let chain: String
    let version: UInt32
    let metadata: Data
}

extension RuntimeMetadataItem: Identifiable {
    var identifier: String { chain }
}
