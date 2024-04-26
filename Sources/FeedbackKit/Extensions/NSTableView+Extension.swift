//
//  NSTableView+Extension.swift
//
//
//  Created by Ahmed Shendy on 26/04/2024.
//

#if os(macOS)
import AppKit

extension NSTableView {
  open override func viewDidMoveToWindow() {
    super.viewDidMoveToWindow()

    backgroundColor = NSColor.clear
    enclosingScrollView!.drawsBackground = false
  }
}
#endif
