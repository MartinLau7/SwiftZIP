import CLibzip

/// Represents different compression methods with their corresponding integer values.
public struct CompressionMethod: RawRepresentable, Equatable {
    /// The raw integer value representing the compression method.
    public let rawValue: Int32

    /// Initializes a new instance of `CompressionMethod` with a given raw value.
    /// - Parameter rawValue: The raw integer value representing the compression method.
    public init(rawValue: Int32) {
        self.rawValue = rawValue
    }
}

// Extension on `CompressionMethod` to provide static constants for various compression methods.
public extension CompressionMethod {
    /// Default compression method; currently the same as `deflate`, but flags are ignored.
    static let `default` = CompressionMethod(rawValue: ZIP_CM_DEFAULT)
    
    /// Store method, no compression, just stores the file in the ZIP archive.
    static let store = CompressionMethod(rawValue: ZIP_CM_STORE)
    
    /// Shrink method, a simple compression algorithm.
    static let shrink = CompressionMethod(rawValue: ZIP_CM_SHRINK)
    
    /// Reduce method with factor 1.
    static let reduce1 = CompressionMethod(rawValue: ZIP_CM_REDUCE_1)
    
    /// Reduce method with factor 2.
    static let reduce2 = CompressionMethod(rawValue: ZIP_CM_REDUCE_2)
    
    /// Reduce method with factor 3.
    static let reduce3 = CompressionMethod(rawValue: ZIP_CM_REDUCE_3)
    
    /// Reduce method with factor 4.
    static let reduce4 = CompressionMethod(rawValue: ZIP_CM_REDUCE_4)
    
    /// Implode method, a compression algorithm for text files.
    static let implode = CompressionMethod(rawValue: ZIP_CM_IMPLODE)
    
    /// Deflate method, a commonly used compression algorithm.
    static let deflate = CompressionMethod(rawValue: ZIP_CM_DEFLATE)
    
    /// Deflate64 method, an extension of the Deflate algorithm.
    static let deflate64 = CompressionMethod(rawValue: ZIP_CM_DEFLATE64)
    
    /// PKWARE Implode method, a modified version of the Implode algorithm.
    static let pkwareImplode = CompressionMethod(rawValue: ZIP_CM_PKWARE_IMPLODE)
    
    /// Bzip2 method, a high compression ratio algorithm.
    static let bzip2 = CompressionMethod(rawValue: ZIP_CM_BZIP2)
    
    /// LZMA method, a powerful compression algorithm.
    static let lzma = CompressionMethod(rawValue: ZIP_CM_LZMA)
    
    /// Terse method, a compression algorithm optimized for small data.
    static let terse = CompressionMethod(rawValue: ZIP_CM_TERSE)
    
    /// LZ77 method, a compression algorithm used in the LZMA algorithm.
    static let lz77 = CompressionMethod(rawValue: ZIP_CM_LZ77)
    
    /// LZMA2 method, an improved version of the LZMA algorithm.
    static let lzma2 = CompressionMethod(rawValue: ZIP_CM_LZMA2)
    
    /// Zstandard method, a fast compression algorithm.
    static let zstd = CompressionMethod(rawValue: ZIP_CM_ZSTD)
    
    /// XZ method, a high compression ratio algorithm.
    static let xz = CompressionMethod(rawValue: ZIP_CM_XZ)
    
    /// JPEG method, used for compressing image files.
    static let jpeg = CompressionMethod(rawValue: ZIP_CM_JPEG)
    
    /// WavPack method, used for compressing audio files.
    static let wavpack = CompressionMethod(rawValue: ZIP_CM_WAVPACK)
    
    /// PPMD method, a high compression ratio algorithm for text data.
    static let ppmd = CompressionMethod(rawValue: ZIP_CM_PPMD)
}
