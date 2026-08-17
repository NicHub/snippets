/*

    Inhibit keyboard. Useful for cleaning the keys.

    USAGE:
        swift "$HOME/Public/snippets/swift/inhibit-keyboard.swift"

 */

import CoreGraphics
import Foundation

let mask =
    (1 << CGEventType.keyDown.rawValue) |
    (1 << CGEventType.keyUp.rawValue) |
    (1 << CGEventType.flagsChanged.rawValue) |
    (1 << 14)   // NX_SYSDEFINED / multimedia keys

let callback: CGEventTapCallBack = { _, _, _, _ in
    return nil
}

guard let tap = CGEvent.tapCreate(
    tap: .cgSessionEventTap,
    place: .headInsertEventTap,
    options: .defaultTap,
    eventsOfInterest: CGEventMask(mask),
    callback: callback,
    userInfo: nil
) else {
    print("Unable to intercept keyboard input.")
    exit(1)
}

let source = CFMachPortCreateRunLoopSource(nil, tap, 0)
CFRunLoopAddSource(CFRunLoopGetCurrent(), source, .commonModes)
CGEvent.tapEnable(tap: tap, enable: true)

print("⌨️ Keyboard disabled for 30 seconds")

DispatchQueue.main.asyncAfter(deadline: .now() + 30) {
    exit(0)
}

CFRunLoopRun()
