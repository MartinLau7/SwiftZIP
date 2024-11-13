import CLibzip

public struct CompressionMethod: RawRepresentable, Equatable {
    public let rawValue: Int32

    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
}

public extension CompressionMethod {
    /// default compression; currently the same as `deflate`, but flags are ignored.
    static let `default` = CompressionMethod(rawValue: ZIP_CM_DEFAULT)

    static let store = CompressionMethod(rawValue: ZIP_CM_STORE)

    static let shrink = CompressionMethod(rawValue: ZIP_CM_SHRINK)

    static let reduce1 = CompressionMethod(rawValue: ZIP_CM_REDUCE_1)

    static let reduce2 = CompressionMethod(rawValue: ZIP_CM_REDUCE_2)

    static let reduce3 = CompressionMethod(rawValue: ZIP_CM_REDUCE_3)

    static let reduce4 = CompressionMethod(rawValue: ZIP_CM_REDUCE_4)

    static let implode = CompressionMethod(rawValue: ZIP_CM_IMPLODE)

    static let deflate = CompressionMethod(rawValue: ZIP_CM_DEFLATE)

    static let deflate64 = CompressionMethod(rawValue: ZIP_CM_DEFLATE64)

    static let pkwareImplode = CompressionMethod(rawValue: ZIP_CM_PKWARE_IMPLODE)

    static let bzip2 = CompressionMethod(rawValue: ZIP_CM_BZIP2)

    static let lzma = CompressionMethod(rawValue: ZIP_CM_LZMA)

    static let terse = CompressionMethod(rawValue: ZIP_CM_TERSE)

    static let lz77 = CompressionMethod(rawValue: ZIP_CM_LZ77)

    static let lzma2 = CompressionMethod(rawValue: ZIP_CM_LZMA2)

    static let zstd = CompressionMethod(rawValue: ZIP_CM_ZSTD)

    static let xz = CompressionMethod(rawValue: ZIP_CM_XZ)

    static let jpeg = CompressionMethod(rawValue: ZIP_CM_JPEG)

    static let wavpack = CompressionMethod(rawValue: ZIP_CM_WAVPACK)

    static let ppmd = CompressionMethod(rawValue: ZIP_CM_PPMD)
}
