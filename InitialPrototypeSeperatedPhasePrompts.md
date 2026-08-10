https://chatgpt.com/s/t_6a799fe86f648191bd2ad8b154b701eb

# Cline Task — Phase 1: Application Foundation

You are implementing Phase 1 of a Flutter/Dart application.

## Objective

Create the initial feature-first project structure for the application.

## Requirements

Create the following directory structure under `lib/`:

```text
lib/
├── core/
│   ├── app_constants.dart
│   ├── services/
│   │   ├── navigation_service.dart
│   │   └── timer_service.dart
│   ├── providers/
│   │   └── base_provider.dart
│   └── models/
│       └── user_activity_model.dart
│
├── models/
│   └── data_schema_model.dart
│
├── services/
│   └── storage_service.dart
│
└── features/
    ├── dashboard/
    │   ├── feature_dashboard.dart
    │   └── widgets/
    │
    ├── interrupter/
    │   ├── feature_interrupter.dart
    │   └── widgets/
    │
    └── feed/
        ├── feature_feed.dart
        └── widgets/
```

Create placeholder Dart files where specified.

## Important Constraints

At this phase:

* Do NOT implement business logic.
* Do NOT implement storage.
* Do NOT implement navigation tracking.
* Do NOT implement timers.
* Do NOT implement providers beyond placeholders.
* Do NOT implement UI features.
* Do NOT add functionality belonging to later phases.

The purpose of this phase is only to establish the architecture.

## Repository Rules

Before modifying anything:

1. Inspect the existing Flutter project.
2. Identify existing files that should not be overwritten.
3. Preserve existing application configuration.
4. Reuse existing structure if equivalent folders/files already exist.

Do not duplicate existing functionality.

## Completion Requirements

After making the changes:

1. Run `flutter analyze`.
2. Run the existing test suite if one exists.
3. Fix any errors caused by this phase.
4. Confirm all required directories/files exist.
5. Do not implement future phases.

## Final Response

Report:

* Files/directories created.
* Existing files modified, if any.
* Commands executed.
* Analysis/test result.
* Any remaining issue.





# Cline Task — Phase 2: Application Configuration

Implement only Phase 2 of the Mindful application.

## Objective

Create a centralized configuration system for application behavioral thresholds and default values.

## Requirements

Implement:

```text
lib/core/app_constants.dart
```

Define centralized constants for:

* Navigation interruption threshold.
* Navigation detection window.
* Continuous scrolling threshold.
* Maximum allowed scroll pause.
* Intervention overlay duration.
* Default current streak.
* Default longest streak.
* Default save count.
* Persistent data file name.

Use the following initial behavioral values:

```text
Navigation switches: 3
Navigation window: 10 seconds

Continuous scrolling: 3 minutes
Maximum continuous-scroll pause: 15 seconds

Intervention duration: 15 seconds

Default saves: 0
Default current streak: 0
Default longest streak: 0

Persistence file: mindful_data.json
```

Use appropriate Dart types and `Duration` values where appropriate.

## Constraints

* Do not implement navigation detection.
* Do not implement scrolling detection.
* Do not implement persistence.
* Do not implement UI.
* Do not create magic-number replacements outside this phase.
* Do not modify unrelated files unless required for compilation.

All future behavioral code must be able to reference these constants instead of hard-coded thresholds.

## Validation

Run:

```bash
flutter analyze
flutter test
```

If tests do not exist, state that clearly.

Fix only issues related to this phase.

## Final Response

Report:

* Constants added.
* Files changed.
* Analysis result.
* Test result.




# Cline Task — Phase 3: User Activity and Application Data Models

Implement only Phase 3.

## Objective

Create the core data models required by the application.

## UserActivity

Implement:

```text
lib/core/models/user_activity_model.dart
```

Represent a user activity event with:

* timestamp
* event type
* metadata

The model must support:

* default construction
* JSON serialization
* JSON deserialization
* copyWith()

Metadata should support arbitrary JSON-compatible values.

## MindfulData

Implement:

```text
lib/models/data_schema_model.dart
```

Represent persisted mindfulness statistics:

* savesCount
* focusStreaks
* lastCheckTime

Also support:

* sensible default constructor
* JSON serialization
* JSON deserialization
* copyWith()

Use nullable handling where appropriate for timestamps.

## Requirements

The models must:

* be independent of UI.
* contain no persistence logic.
* contain no provider logic.
* contain no navigation logic.
* contain no timer logic.

JSON output should be deterministic and safe to persist locally.

Handle missing optional JSON fields gracefully.

## Validation

Run:

```bash
flutter analyze
flutter test
```

Add focused unit tests for:

* default values.
* JSON round trip.
* copyWith().
* missing optional fields.

Do not implement future application features.

## Final Response

Report files changed, model behavior, tests added, and validation results.





# Cline Task — Phase 4: Base Provider

Implement only Phase 4.

## Objective

Create the shared provider/state-management foundation.

Implement:

```text
lib/core/providers/base_provider.dart
```

The base provider shall:

* extend ChangeNotifier.
* expose loading state.
* expose initialized state.
* provide safe state notification behavior.
* allow subclasses to update state cleanly.

## Requirements

The provider must support a lifecycle similar to:

```text
not initialized
      ↓
loading
      ↓
initialized
```

Provide safe notification behavior so that state changes do not attempt invalid notifications after disposal.

Keep the implementation generic enough for:

* DashboardProvider.
* InterruptProvider.
* Future providers.

## Constraints

Do not implement:

* dashboard state.
* interrupt state.
* storage.
* navigation.
* timers.
* UI.

## Validation

Run:

```bash
flutter analyze
flutter test
```

Add focused tests if practical.

Fix compilation or test errors caused by this phase.

## Final Response

Summarize implementation and validation.


