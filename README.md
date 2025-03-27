# Ibon - SwiftUI Project Architecture

Ibon is a SwiftUI project that demonstrates an ideal codebase organization for modern iOS applications. This document outlines the architectural approach, folder structure, and naming conventions used throughout the project.

## Project Overview

Ibon is built using:
- SwiftUI for the user interface
- SwiftData for persistent storage
- Modular architecture with clear separation of concerns
- Domain-driven folder organization

## Directory Structure

The project follows a domain-based organization with clear component separation:

```
Ibon/
├── Assets.xcassets/         # Image assets and resources
├── Config/                  # Application configuration files
├── Constants/               # App-wide constants and definitions
├── Enums/                   # Enumeration types
├── Extensions/              # Swift extensions for existing types
├── Flags/                   # Feature flags and toggles
├── Jobs/                    # Background tasks and processes
├── Models/                  # Data models and SwiftData entities
│   └── Migrations/          # SwiftData migration logic
├── Preview Content/         # Preview assets for SwiftUI Canvas
├── Services/                # Core services and API clients
├── States/                  # Application state management
├── Utilities/               # Helper functions and utilities
├── Views/                   # UI components and screens
│   ├── Cells/               # Reusable cell components
│   ├── Charts/              # Chart and visualization components
│   └── Sheets/              # Bottom and modal sheets
├── IbonApp.swift            # Main app entry point
└── ViewRouter.swift         # Application navigation routing
```

## Key Components

### Application Entry

- **IbonApp.swift**: The main entry point that initializes the SwiftData store and environment objects.
- **ViewRouter.swift**: Handles high-level navigation based on user state (e.g., authentication status).

### Models

The `Models/` directory contains SwiftData entities and domain models:
- Core models (Item, Order, Position, Symbol, etc.)
- Migration support for schema changes

### Views

The `Views/` directory follows a component-based organization:
- Screen-level views (TaskListScreen, PortfolioScreen, etc.)
- Specialized view components grouped by purpose (Cells, Charts, Sheets)
- Each screen is self-contained with its own SwiftUI view file

### Services

The `Services/` directory contains specialized service classes for external interactions:
- **CoreBackend**: Core backend services
- **ContentAPI**: Content-related API access
- **TradingESB**: Trading services integration
- **OTPService**: Authentication services
- **YahooStocks**: Stock data integration

### State Management

The `States/` directory handles application state:
- **NavigationState**: Manages navigation state across the app
- **UserPreferences**: Handles user preferences and settings

## Naming Conventions

- **Files**: Named using PascalCase with descriptive suffixes (e.g., `TaskListScreen.swift`, `NavigationState.swift`)
- **Directories**: Named using PascalCase and pluralized for collections (e.g., `Models/`, `Views/`, `Services/`)
- **Components**: Named by their purpose with appropriate suffixes:
  - **Screen**: Top-level navigation screens
  - **Service**: External service integrations
  - **State**: State management objects

## Application Flow

1. The app initializes with `IbonApp` as the entry point
2. `ViewRouter` determines the current user state and displays the appropriate screens
3. Screens interact with models through SwiftData and services
4. Navigation is managed through a combination of SwiftUI NavigationView and custom state objects

## Best Practices Demonstrated

- Separation of concerns through domain-based folder organization
- Consistent naming conventions for clarity and maintainability
- Modular components that can be reused and tested independently
- Clear routing and navigation strategies
- Environment object injection for dependency management
- SwiftData integration for persistent storage

## Future Enhancements

Future iterations of this architecture could include:
- Dependency injection framework
- Comprehensive unit and UI test coverage
- Modularization through Swift Package Manager
- Feature-based organization for larger applications