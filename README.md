This application crashes on a device when line 1 of `Shared.xcconfig` (`CLANG_ENABLE_OBJC_ARC = YES`)  is uncommented. It doesn't crash when the line is commented out. It also doesn't appear to crash on the iOS simulator. I don't know why.

The crash happens in [`Crasher.m`](https://github.com/aidansteele/arc-crash/blob/master/arctest/Crasher.m) on line 27 when the property is set. It doesn't crash if line 23 (a line that never gets executed) is commented out.
