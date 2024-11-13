// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftZIP",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftZIP",
            targets: ["SwiftZIP"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CLibzip",
            path: "Sources/CLibzip",
            exclude: .collection([
                [
                    // HAVE_MBEDTLS
                    "src/zip_crypto_mbedtls.c",
                    // HAVE_GNUTLS
                    "src/zip_crypto_gnutls.h",
                    "src/zip_crypto_gnutls.c",
                    // HAVE_LIBLZMA
                    "src/zip_algorithm_xz.c",
                    "src/zip_algorithm_zstd.c",
                ],

                .productItems([
                    // HAVE_COMMONCRYPTO
                    "src/zip_crypto_commoncrypto.h",
                    "src/zip_crypto_commoncrypto.c",
                ], when: [.linux]),

                .productItems([
                    // HAVE_OPENSSL
                    "src/zip_crypto_openssl.h",
                    "src/zip_crypto_openssl.c",
                ], when: [.macOS]),

                .productItems([
                    // WIN32
                    "src/zip_crypto_win.h",
                    "src/zip_crypto_win.c",
                    "src/zip_random_uwp.c",
                    "src/zip_random_win32.c",
                    "src/zip_source_file_win32.h",
                    "src/zip_source_file_win32.c",
                    "src/zip_source_file_win32_named.c",
                    "src/zip_source_file_win32_utf16.c",
                    "src/zip_source_file_win32_utf8.c",
                    "src/zip_source_file_win32_ansi.c",
                ], when: [.macOS, .linux]),

            ]),
            publicHeadersPath: "include",
            cSettings: .collection([
                .productItems([
                    .headerSearchPath("private_include"),
                ]),
                .productItems([
                    .headerSearchPath("private_include/darwin"),
                ], when: [.macOS]),
                .productItems([
                    .headerSearchPath("private_include/linux"),
                ], when: [.linux]),
            ]),
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("bz2"),

                .linkedLibrary("ssl", .when(platforms: [.linux])),
                .linkedLibrary("crypto", .when(platforms: [.linux])),
            ]
        ),
        .target(
            name: "SwiftZIP",
            dependencies: ["CLibzip"]
        ),
        .testTarget(
            name: "SwiftZIPTests",
            dependencies: ["SwiftZIP"]
        ),
    ]
)

extension Platform {
    #if os(macOS)
        static let current: Platform = .macOS
    #elseif os(iOS)
        static let current: Platform = .iOS
    #elseif os(tvOS)
        static let current: Platform = .tvOS
    #elseif os(watchOS)
        static let current: Platform = .watchOS
    #elseif os(Linux)
        static let current: Platform = .linux
    #elseif os(Windows)
        static let current: Platform = .windows
    #else
        #error("Unsupported platform.")
    #endif
}

extension Array {
    static func collection(_ items: [[Element]]) -> [Element] {
        return items.flatMap { $0 }
    }

    static func productItem(_ item: Element, when platforms: [Platform]? = nil) -> [Element] {
        if let platforms = platforms {
            if !platforms.contains(.current) {
                return []
            }
        }
        return [item]
    }

    static func productItems(_ items: [Element], when platforms: [Platform]? = nil) -> [Element] {
        if let platforms = platforms {
            if !platforms.contains(.current) {
                return []
            }
        }
        return items
    }
}
