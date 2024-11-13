public struct ZipArchiveGlobalFlags: OptionSet {
    public let rawValue: UInt32

    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }
}

extension ZipArchiveGlobalFlags {
    static let readOnly = ZipArchiveGlobalFlags(rawValue: ZIP_AFL_RDONLY)

    static let isTorrentzipped = ZipArchiveGlobalFlags(rawValue: ZIP_AFL_IS_TORRENTZIP)

    static let writeTorrentzip = ZipArchiveGlobalFlags(rawValue: ZIP_AFL_WANT_TORRENTZIP)

    static let createOrKeepFile = ZipArchiveGlobalFlags(rawValue: ZIP_AFL_CREATE_OR_KEEP_FILE_FOR_EMPTY_ARCHIVE)
}
