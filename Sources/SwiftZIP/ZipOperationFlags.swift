public struct ZipOperationFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

public extension ZipOperationFlags {
    static let none = ZipOperationFlags([])

    static let noCase = ZipOperationFlags(rawValue: ZIP_FL_NOCASE)

    static let noDir = ZipOperationFlags(rawValue: ZIP_FL_NODIR)

    static let compressed = ZipOperationFlags(rawValue: ZIP_FL_COMPRESSED)

    static let unchanged = ZipOperationFlags(rawValue: ZIP_FL_UNCHANGED)

    static let recompress = ZipOperationFlags(rawValue: ZIP_FL_RECOMPRESS)

    static let encrypted = ZipOperationFlags(rawValue: ZIP_FL_ENCRYPTED)

    static let guessEncoding = ZipOperationFlags(rawValue: ZIP_FL_ENC_GUESS)

    static let rawEncoding = ZipOperationFlags(rawValue: ZIP_FL_ENC_RAW)

    static let strictEncoding = ZipOperationFlags(rawValue: ZIP_FL_ENC_STRICT)

    static let local = ZipOperationFlags(rawValue: ZIP_FL_LOCAL)

    static let central = ZipOperationFlags(rawValue: ZIP_FL_CENTRAL)

    static let utf8Encoding = ZipOperationFlags(rawValue: ZIP_FL_ENC_UTF_8)

    static let cp437Encoding = ZipOperationFlags(rawValue: ZIP_FL_ENC_CP437)

    static let overwrite = ZipOperationFlags(rawValue: ZIP_FL_OVERWRITE)
}
