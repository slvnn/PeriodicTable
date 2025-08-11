# Periodic Table (SwiftUI)

A lightweight, dark-themed SwiftUI app that lets you browse elements of the periodic table, search by name/symbol/atomic number, and view a detail sheet with key properties and a short description.

## Features

- Clean two-column grid with translucent cards
- Fast, case-insensitive search across name, symbol, and atomic number
- Detail view with atomic mass, melting/boiling points, and year of discovery
- Fully in SwiftUI with a simple local JSON data source

## Screenshots

Add your screenshots in this section (e.g., from the iOS Simulator) and reference them here.

## Tech stack

- Swift 5, SwiftUI
- NavigationStack for modern navigation
- Local JSON (`elements.json`) decoded via `Codable`

## Project structure

```
PeriodicTable/
├─ PeriodicTableApp.swift             # App entry point
├─ Bundle-Decodable.swift             # JSON decoding helper
├─ Elements.swift                     # Data models (Element, Elements)
├─ elements.json                      # Local dataset (subset of elements)
├─ Assets.xcassets/                   # App icons, colors
└─ Views/
   ├─ ContentView.swift               # Grid + search
   ├─ ElementGridView.swift           # Grid cell
   └─ ElementView.swift               # Detail view
```

## Requirements

- Xcode 15 or newer
- iOS 16+ (uses `NavigationStack`)

## Getting started

1. Open `PeriodicTable.xcodeproj` in Xcode
2. Select an iOS Simulator (or a device)
3. Build & Run

## Data source

The app loads `elements.json` from the bundle. The dataset currently includes a subset of elements (1–94). You can extend it by adding more entries to the JSON (matching the `Element` schema).

### JSON schema

```json
{
  "elements": [
    {
      "id": 1,
      "name": "Hydrogen",
      "symbol": "H",
      "atomicMass": 1.008,
      "melting": -259,
      "boiling": -253,
      "yearDiscovery": 1766,
      "description": "..."
    }
  ]
}
```

## Notes and improvements

- Search now matches name, symbol, and atomic number (case-insensitive)
- Atomic mass is formatted to up to 3 decimal places
- Avoid nested navigation by letting the detail view inherit the parent `NavigationStack`
- Potential enhancements:
  - Add full dataset (up to 118)
  - Color-code cards by group/phase
  - Add sorting and filters
  - Add accessibility labels and Dynamic Type support
  - Add unit tests for decoding and simple UI tests

## License

Choose a license (e.g., MIT) before publishing. If you pick MIT, add a `LICENSE` file at the repository root.


