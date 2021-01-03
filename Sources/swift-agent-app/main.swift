import Foundation
import Cocoa

// source: https://rderik.com/blog/understanding-a-few-concepts-of-macos-applications-by-building-an-agent-based-menu-bar-app/

let delegate = AppDelegate()
NSApplication.shared.delegate = delegate

_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
