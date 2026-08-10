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







