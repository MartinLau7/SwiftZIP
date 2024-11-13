public struct ZipOpenFlags: OptionSet {
    public let rawValue: Int32

    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
}

public extension ZipOpenFlags {
    static let create = ZipOpenFlags(rawValue: ZIP_CREATE)

    static let exists = ZipOpenFlags(rawValue: ZIP_EXCL)

    static let checkConsistency = ZipOpenFlags(rawValue: ZIP_CHECKCONS)

    static let truncate = ZipOpenFlags(rawValue: ZIP_TRUNCATE)

    static let readOnly = ZipOpenFlags(rawValue: ZIP_RDONLY)
}
