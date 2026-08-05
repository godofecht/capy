// Azazel parity model for capy. First target slice: capy's self-contained color
// module. src/color.zig imports only std (no zigimg, no platform backend, no
// system libs), so Azazel builds it directly as a static library. capy pins Zig
// 0.14.1. Verified: the source compiles as a static lib on 0.14.1.
package build

toolchain: zig: {
	lanes: ["0.14"]
	preferred: "0.14"
}

capy_color: #Module & {
	kind: "static"
	root: "src/color.zig"
}
