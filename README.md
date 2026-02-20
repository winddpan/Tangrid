# Version History

## 0.11.0
* New: Added support for customizable keyboard shortcuts to move the current window to specific displays or Desktop Spaces.
* Improved: Enhanced the overall stability and performance of the window management engine.
* Fixed: Resolved an issue where the Cmd + ` shortcut exhibited inconsistent behavior during window switching.

## 0.10.8
* Fixed an issue where using cmd+` incorrectly triggered all window switchers
* Fixed an occasional issue in Snap mode where releasing the mouse failed to place the window correctly

## 0.10.7
* Fixed mouse hover preview window delay on certain devices
* Added window effect Toggle: Window movement animations, Border flash when switching between tiled and floating modes

## 0.10.6
* Fixed an issue where window previews would fail for windows positioned outside the screen bounds
* Added an exclusion list for the Auto-Center Window on Open feature, allowing specific windows to opt out of automatic centering
* Improved window layout behavior: windows smaller than the minimum size threshold now automatically expand and push adjacent windows forward to minimize overlap

## 0.10.5
* Window Switcher: Added an option to automatically move the cursor to the target window.
* Improved the stability of layout refresh behavior.
* Fixed multiple known issues reported by users.
* Reduced the app package size.

## 0.10.4
* Fixed an issue where the Esc key input could be swallowed.
* Improved the stability of layout refreshes.

## 0.10.3
* Fixed the issue where switching between multiple tabs could result in empty placeholders being left.
* Fixed the problem where quitting the app using cmd + q still left a blank placeholder.
* Brave Browser can now be tiled properly without issues.

## 0.10.2
* Fixed a bug where layouts would not work properly in multi-monitor scenarios
* Fixed a bug where refresh would occasionally fail after app process termination
* Cmd+Tab now supports mouse scroll for window switching, configurable in mouse actions
* Fixed unexpected scrolling when selecting with mouse in Cmd+Tab vertical mode
* Added application blacklist feature for Cmd+Tab
* Fixed unhandled mouse gesture actions in Cmd+Tab vertical mode
* Fixed visual anomaly where Dock bar would disappear but preview window would remain visible when clicking on a full-screen app's dock icon
* Fixed issue where diagonal mouse movements would trigger preview of adjacent applications in Dock preview window
* Added Esc key support to exit Dock preview window

## 0.10.1
* Fixed anomalies when centering windows via shortcut in auto-tiling mode
* Improved guidance and settings for window switcher vertical mode
* Optimized UI for vertical mode window switcher

## 0.10.0
* Window switcher and Dock preview now support mouse and trackpad gestures with over a dozen configurable actions
* Dock preview and switcher now support dynamic thumbnail refresh and minimized state display
* When Option-drag is enabled, the system's Option+left-click function to hide previous window is dynamically disabled; it restores when switching to other modifier keys

## 0.9.3
* Optimized Cmd+Tab loading speed

## 0.9.2
* Fixed bug where windows were not handled correctly after Cmd+H in auto-layout mode
* Fixed several bugs in WindowSwitcher list mode
* Removed the 5-window limitation for Dock preview
* Fixed various issues on macOS 15

## 0.9.1
* Added middle-click and right-click action options for Dock preview
* Cmd+Tab now supports Cmd+` to select previous item
* Fixed bug where shortcut cancellation would not be remembered
* Fixed bug where switching between Snap/Tiling modes would not reset correctly

## 0.9.0
* Added window switcher list mode (with search)
* Added window fine-tuning: auto-center newly opened windows
* Fixed reported bugs

## 0.8.7
* Fixed bug where layout would fail when adding or removing monitors
* Fixed bug where apps with startup dialogs could not auto-layout
* Continued optimization of the complete snap assist experience

## 0.8.6
* Improved window group stability, fixed window misalignment issues across multiple spaces

## 0.8.5
* Fixed several layout-related bugs caused by underlying architecture changes
* Fixed bug where conflicts with other apps caused layout to fail slowly

## 0.8.4
* Added: Click Dock icon to minimize active window

## 0.8.3
* Fixed ghost window bug that could occur in apps like WeChat
* Fixed bug where auto-tiling windows were not working in snap assist mode
* Overall optimization of interaction experience when dragging with modifier keys in snap assist mode
* Fixed tiling issues with software like Adobe Illustrator

## 0.8.2
* New windows no longer flicker when not in tiled state
* Fixed bug where regrouping after layout block dissolution could result in unexpected orientation
* Small windows can now be moved into large windows to split them even in tiled state

## 0.8.0
* Refactored layout engine to use BSP (Binary Space Partitioning) layout
* Changed default floating/tiling mode to snap assist/auto-flow layout
* Added onboarding guide

## 0.7.0
* Added: Dock preview
* Redesigned Cmd+Tab UI to maintain consistent style with Dock preview
* Multiple liquid glass effects available
* Customizable preview window size

## 0.6.3
* Greatly improved window stability
* Added two sets of four-directional shortcuts: focus window and move window
* Unified transition animation design for tiling/floating mode switching

## 0.6.0
* Added: Single window auto-float option (enabled by default)
* Added: Real-time calculation of minimum window size to prevent windows from exceeding screen bounds whenever possible
* Added: Pick window menu button
* Added: Equalize windows menu button and shortcut
* Added: New window placement position option
* Optimized: Spacing parameter adjustments now take effect in real-time
* Optimized: Transition animations for floating windows
* Optimized: Logic for remembering floating window positions
* Optimized: Preset multiple floating window rules
* Fixed: Issue where diagonal window resizing was not responsive

## 0.5.5
* Fixed bug that could intercept arrow keys
* Correct refresh now occurs after dragging windows to different desktops in Mission Control
* Added sticky window mode option for window switching

## 0.5.3
* Shortcut recording no longer triggers corresponding actions

## 0.5.2
* Added permission management page to resolve bug where app had no effect on first launch
* Fixed several shortcut issues
* Fixed issue where full-screen windows would not tile in certain scenarios
* Fixed occasional bug where newly created windows would not tile
* Adjusted switcher UI for Light mode
* Added Cmd+Shift+Tab for reverse switching