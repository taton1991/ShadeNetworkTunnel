// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "ShadeNetworkTunnel",
  products: [
    .library(
        name: "ShadeNetworkTunnel",
        targets: ["ShadeNetworkTunnel"]
    ),
    .library(
        name: "ShadeNetworkTunnelC",
        targets: ["ShadeNetworkTunnelC"]
    )
  ],
  targets: [
    .target(
        name: "ShadeNetworkTunnel",
        dependencies: ["HevSocks5Tunnel", "ShadeNetworkTunnelC"],
        path: "Sources/Tun2SocksKit"
    ),
    .target(
        name: "ShadeNetworkTunnelC",
        path: "Sources/Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/EbrahimTahernejad/Tun2SocksKit/releases/download/5.14.4/HevSocks5Tunnel.xcframework.zip",
        checksum: "70c34e04b6b2a2349019569797d75c07df76d385dd08cf632e6e27ac2a5abc5e"
    )
  ]
)
