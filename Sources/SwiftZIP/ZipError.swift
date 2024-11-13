import Foundation

public enum ZipError: Error {
    case zipError(zip_error_t)
    case isNotZipFile
    case fileNotExist
    case unsupportedURL
    case createFileFailed
    case integerCastFailed
    case internalInconsistency
}

extension ZipError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case var .zipError(error):
            return String(cString: zip_error_strerror(&error))
        case .isNotZipFile:
            return "Not a zip file"
        case .fileNotExist:
            return "File not exist"
        case .unsupportedURL:
            return "Unsupported URL"
        case .createFileFailed:
            return "Create file failed"
        case .integerCastFailed:
            return "Integer cast failed"
        case .internalInconsistency:
            return "Internal inconsistency"
        }
    }
}
