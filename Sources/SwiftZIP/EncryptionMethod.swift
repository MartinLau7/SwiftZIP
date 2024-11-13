public struct EncryptionMethod: RawRepresentable, Equatable {
    public let rawValue: UInt16

    public init(rawValue: UInt16) {
        self.rawValue = rawValue
    }
}

public extension EncryptionMethod {
    /// not encrypted
    static let none = EncryptionMethod(rawValue: UInt16(ZIP_EM_NONE))

    /// traditional PKWARE encryption
    static let tradPKWare = EncryptionMethod(rawValue: UInt16(ZIP_EM_TRAD_PKWARE))

    /// Winzip AES encryption 128 bit encryption
    static let aes128 = EncryptionMethod(rawValue: UInt16(ZIP_EM_AES_128))

    /// Winzip AES encryption 192 bit encryption
    static let aes192 = EncryptionMethod(rawValue: UInt16(ZIP_EM_AES_192))

    /// Winzip AES encryption 256 bit encryption
    static let aes256 = EncryptionMethod(rawValue: UInt16(ZIP_EM_AES_256))

    /// Unknown encryption method
    static let unknown = EncryptionMethod(rawValue: UInt16(ZIP_EM_UNKNOWN))
}
