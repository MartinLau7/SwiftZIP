public struct ZipOperatingSystem: RawRepresentable, Equatable {
    public let rawValue: UInt8
    public init(rawValue: UInt8) {
        self.rawValue = rawValue
    }
}

public extension ZipOperatingSystem {
    /// MS-DOS and OS/2 (FAT / VFAT / FAT32 file systems)
    static let dos = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_DOS))

    /// Amiga
    static let amiga = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_AMIGA))

    /// OpenVMS
    static let openVMS = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_OPENVMS))

    /// UNIX
    static let unix = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_UNIX))

    /// VM/CMS
    static let vmCMS = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_VM_CMS))

    /// Atari ST
    static let atariST = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_ATARI_ST))

    /// OS/2 H.P.F.S.
    static let os2 = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_OS_2))

    /// Macintosh
    static let macintosh = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_MACINTOSH))

    /// Z-System
    static let zSystem = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_Z_SYSTEM))

    /// CP/M
    static let cpm = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_CPM))

    /// Windows NTFS
    static let windowsNTFS = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_WINDOWS_NTFS))

    /// MVS (OS/390 - Z/OS)
    static let mvs = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_MVS))

    /// VSE
    static let vse = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_VSE))

    /// Acorn Risc
    static let acornRISC = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_ACORN_RISC))

    /// VFAT
    static let vfat = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_VFAT))

    /// alternate MVS
    static let alternateMVS = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_ALTERNATE_MVS))

    /// BeOS
    static let beOS = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_BEOS))

    /// Tandem
    static let tandem = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_TANDEM))

    /// OS/400
    static let os400 = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_OS_400))

    /// OS X (Darwin)
    static let macOS = ZipOperatingSystem(rawValue: UInt8(ZIP_OPSYS_OS_X))
}
