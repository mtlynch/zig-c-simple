const std = @import("std");

const arithmetic = @cImport({
    @cInclude("arithmetic.c");
});

fn add(x: i32, y: i32) i32 {
    return arithmetic.add(x, y);
}

pub fn main() !void {
    const x: i32 = 5;
    const y: i32 = 16;
    const z: i32 = add(x, y);

    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("{d} + {d} = {d}\n", .{ x, y, z });
    try bw.flush();
}

test "test add" {
    try std.testing.expectEqual(@as(i32, 21), add(5, 16));
}
