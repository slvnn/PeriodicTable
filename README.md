<img width="100" height="100" alt="icon" src="https://github.com/user-attachments/assets/1a8641da-2a54-4d20-b335-dd98b9d33ced" />

# Periodic Table - SwiftUI


A lightweight, SwiftUI app that lets you browse elements of the periodic table, search, and view a detail sheet with key properties and a short description.

## Features

- Clean two-column grid with translucent cards
- Fast searching
- Detail view with atomic mass, melting/boiling points, year of discovery and a description
- Fully in SwiftUI with a simple local JSON data source

## Screenshots
<img width="300" height="2622" alt="1" src="https://github.com/user-attachments/assets/bf0d0e6c-e3a9-41a3-8e6c-d82d587d3684" />

<img width="300" height="2622" alt="2" src="https://github.com/user-attachments/assets/25b537d3-2133-4fd4-bcc6-2e0ceae6b3f1" />


## Project structure

```
PeriodicTable/
├─ PeriodicTableApp.swift             # App entry point
├─ Bundle-Decodable.swift             # JSON decoding helper
├─ Elements.swift                     # Data models (Element, Elements)
├─ elements.json                      # Local dataset (subset of elements)
├─ Assets.xcassets/                   # App icon
└─ Views/
   ├─ ContentView.swift               
   ├─ ElementGridView.swift           
   └─ ElementView.swift               
```

## Requirements

- Xcode 15 or newer
- iOS 17+ (uses `NavigationStack`)

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



## License

MIT License – see [LICENSE](https://github.com/slvnn/PeriodicTable/blob/main/LICENSE) for details.


