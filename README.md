# zig-c-simple

[![License](https://img.shields.io/badge/license-Unlicense-blue)](LICENSE)

A simple example of calling C code from Zig.

## Overview

This repo shows a simple example of calling into C code from a Zig application. It uses the Zig C compiler to compile `arithmetic.c` and then uses the `arithmetic.h` header to call the C `add` function from Zig.

## Requirements

* Zig 0.11.0

This code has been tested on Debian 11.

### Optional dependencies

* Nix

## Scripts

### Run C application

The following script compiles the C version of the application and runs it:

```bash
./dev-scripts/compile-and-run-c
```

### Run Zig application

The following script compiles the Zig version of the application and runs it:

```bash
./dev-scripts/compile-and-run-zig
```

### Run unit tests

The following script runs Zig's unit tests against the application:

```bash
./dev-scripts/run-unit-tests
```
