#!/bin/bash
# create_xcframework.sh

lipo \
	"target/aarch64-apple-ios-sim/release/libsearch_ffi.a" \
	"target/x86_64-apple-ios/release/libsearch_ffi.a" \
	-create -output "target/libsearch_ffi.a"

xcodebuild -create-xcframework \
 -library target/aarch64-apple-ios/release/libsearch_ffi.a \
 -library target/libsearch_ffi.a \
 -output ios/libsearch_ffi.xcframework