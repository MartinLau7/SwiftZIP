public final class ZipArchive {
    let zipSource: OpaquePointer

    init(zipSource: OpaquePointer) {
        self.zipSource = zipSource
    }

    deinit {
        zip_discard(zipSource)
    }
}
