//
//  CMTimeRange+Extended.swift
//  CCamService
//
//  Created by hideyuki machida on 2018/08/08.
//  Copyright © 2018 町田 秀行. All rights reserved.
//

import AVFoundation

extension CMTimeRange {
    enum CodingKeys: String, CodingKey {
        case start
        case duration
    }
}

extension CMTimeRange: Decodable {
    public init(from decoder: Decoder) throws {
        self.init()
        let values = try decoder.container(keyedBy: CodingKeys.self)
        start = try values.decode(CMTime.self, forKey: .start)
        duration = try values.decode(CMTime.self, forKey: .duration)
    }
}

extension CMTimeRange: Encodable {
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(start, forKey: .start)
        try container.encode(duration, forKey: .duration)
    }
}
