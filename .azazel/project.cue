package build
toolchain: zig: { lanes: ["0.14"], preferred: "0.14" }
capy_color: #Module & { kind: "static", root: "src/color.zig" }
capy: #Module & {
	kind: "module"
	root: "src/capy.zig"
	pkg_imports: [
		{alias: "zigimg", package: "zigimg", module: "zigimg"},
		{alias: "objc", package: "zig-objc", module: "objc"},
	]
	native: {
		link_libc: true
		frameworks: ["CoreData","ApplicationServices","CoreFoundation","CoreGraphics","CoreText","CoreServices","Foundation","AppKit","ColorSync","ImageIO","CFNetwork"]
		system_libs: ["objc"]
	}
}

probe: #Module & {
	kind: "exe"
	root: "src/azazel_capy_probe.zig"
	deps: ["capy"]
}
