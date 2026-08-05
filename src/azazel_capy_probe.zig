//! Forces capy's macOS AppKit backend (via zig-objc) to compile: calls
//! capy.init and capy.Window.init so lazy analysis pulls in the objc-runtime
//! backend, proving the full GUI library compiles, not just capy's re-exports.
const std = @import("std");
const capy = @import("capy");

pub fn main() !void {
    try capy.init();
    var window = try capy.Window.init();
    _ = &window;
}
