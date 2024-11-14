import CLibzip

public final class ZipEntry {
    private let readBufSize = 16384
    private let stat: zip_stat = .init()
    private let localExtraFieldsCount: Int16 = 0
    private let centralExtraFieldsCount: Int16 = 0
    private let nativeName = ""

    public var index: UInt64 = 0
}
