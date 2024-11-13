/// A compression preference for deflate.
public struct CompressionLevel: RawRepresentable, Equatable {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public extension CompressionLevel {
    static let `default` = CompressionLevel(rawValue: 0)
    static let fastest = CompressionLevel(rawValue: 1)
    static let best = CompressionLevel(rawValue: 9)
}
