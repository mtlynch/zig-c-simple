const std = @import("std");

const arithmetic = @cImport({
    @cInclude("arithmetic.h");
});

fn add(x: i32, y: i32) i32 {
    return arithmetic.add(x, y);
}

pub fn main() !void {
    const x: i32 = 5;
    const y: i32 = 16;
    var z: i32 = add(x, y);

    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("{d} + {d} = {d}.\n", .{ x, y, z });
    try bw.flush();
}

test "simple test" {
    const x: i32 = 5;
    const y: i32 = 16;
    try std.testing.expectEqual(@as(i32, 21), add(x, y));
}
