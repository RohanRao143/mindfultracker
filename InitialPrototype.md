A good ACT workflow is to make each task small, independently testable, and easy to review. Instead of implementing an entire feature in one step, split it into vertical slices.

# Phase 1 — Project Foundation

## Task 1.1 — Create Project Structure

**Goal**
Create the feature-first folder hierarchy.

**Files**

```
lib/
core/
features/
models/
services/
```

Create empty placeholder files for:

```
core/
    app_constants.dart
    services/
        navigation_service.dart
        timer_service.dart
    providers/
        base_provider.dart
    models/
        user_activity_model.dart

models/
    data_schema_model.dart

services/
    storage_service.dart

features/
    dashboard/
        feature_dashboard.dart
        widgets/

    interrupter/
        feature_interrupter.dart
        widgets/

    feed/
        feature_feed.dart
        widgets/
```

**Definition of Done**

* Folder structure exists
* All files compile
* No implementation yet

---

## Task 1.2 — Define Global Constants

Implement

```
core/app_constants.dart
```

Include constants for

* interrupt thresholds
* scroll thresholds
* overlay duration
* file names
* default streak values

**Definition of Done**

No magic numbers remain in later code.

---

## Task 1.3 — Create Base Models

Implement

```
user_activity_model.dart
data_schema_model.dart
```

Define

UserActivity

* timestamp
* event type
* metadata

MindfulData

* savesCount
* focusStreaks
* lastCheckTime

Add

* JSON serialization
* copyWith()
* default constructors

---

## Task 1.4 — Base Provider

Create

```
base_provider.dart
```

Responsibilities

* extends ChangeNotifier
* safe notifyListeners()
* loading state
* initialized state

---

# Phase 2 — Local Storage

## Task 2.1 — Storage Service

Implement

```
storage_service.dart
```

Responsibilities

* create file if missing
* read JSON
* write JSON
* reset data

Uses

* dart:io
* path_provider

No UI.

---

## Task 2.2 — Storage Testing

Verify

* first launch
* second launch
* corrupted file recovery
* missing file recovery

---

# Phase 3 — Navigation Tracking

## Task 3.1 — Navigation Service

Implement

```
navigation_service.dart
```

Responsibilities

Track

* push
* pop
* replace

Maintain

```
List<DateTime>
```

of navigation events.

---

## Task 3.2 — Sliding Window Algorithm

Implement

Logic

```
3 switches

inside

10 seconds
```

Should expose

```
bool shouldInterrupt()
```

without UI.

---

## Task 3.3 — App Lifecycle

Track

* resumed
* paused
* inactive

Reset timers appropriately.

---

# Phase 4 — Timer Engine

## Task 4.1 — Timer Service

Implement

```
timer_service.dart
```

Responsibilities

* countdown
* cancel
* restart
* callbacks

Reusable for

* interrupt overlay
* scroll monitoring

---

## Task 4.2 — Countdown Logic

Support

* 15 second timer
* pause
* resume
* completion callback

---

# Phase 5 — Dashboard

## Task 5.1 — Dashboard Provider

Manage

* saves
* streaks
* loading

Sync with StorageService.

---

## Task 5.2 — Dashboard Widgets

Create

```
FocusStreakCard
SaveCounterCard
StatCard
```

Only UI.

---

## Task 5.3 — Dashboard Screen

Compose widgets into

```
feature_dashboard.dart
```

Display

* Saves
* Current streak
* Longest streak
* Last interruption

---

# Phase 6 — Interrupt Feature

## Task 6.1 — Interrupt Provider

State

* active
* countdown
* completed

---

## Task 6.2 — Overlay Widget

Create

```
OverlayScreen
```

Contains

* countdown
* breathing prompt
* progress indicator

---

## Task 6.3 — Trigger Overlay

Connect

NavigationService

↓

InterruptProvider

↓

Overlay

---

## Task 6.4 — Save Logic

When overlay finishes

* increment saves
* persist JSON
* update dashboard

---

# Phase 7 — Doom Scroll Detection

## Task 7.1 — Scroll Tracker

Create

ScrollController wrapper.

Track

* total scroll duration
* pause duration
* active duration

---

## Task 7.2 — Continuous Scroll Detection

Algorithm

```
3 minutes continuous

pause <15 seconds
```

Trigger intervention.

---

## Task 7.3 — Slow Scroll

Implement custom

```
ScrollPhysics
```

to reduce scroll velocity.

---

## Task 7.4 — Grayscale Overlay

Create

```
ColorFiltered
```

effect.

Enable/disable dynamically.

---

## Task 7.5 — Sticky Banner

Create widget

```
MindfulBanner
```

Display after threshold.

---

# Phase 8 — Integration

## Task 8.1 — Wire Providers

Connect

* Storage
* Dashboard
* Navigation
* Timer
* Interrupt

---

## Task 8.2 — Persist State

Ensure

every update

writes

```
mindful_data.json
```

---

## Task 8.3 — App Initialization

On startup

* initialize storage
* load JSON
* initialize providers
* restore dashboard

---

# Phase 9 — Testing

## Task 9.1

Test navigation detection.

---

## Task 9.2

Test interrupt timing.

---

## Task 9.3

Test scroll detection.

---

## Task 9.4

Test storage persistence.

---

## Task 9.5

Edge cases

* rapid app close
* corrupted JSON
* missing JSON
* timer cancellation
* app backgrounding

---

# Phase 10 — Polish

## Task 10.1

Animations

* overlay fade
* countdown
* dashboard counters

---

## Task 10.2

Error handling

* storage failures
* timer failures
* lifecycle issues

---

## Task 10.3

Code cleanup

* documentation
* comments
* remove dead code
* lint fixes

## Recommended ACT Mode execution order

1. Project Structure
2. Constants
3. Models
4. Base Provider
5. Storage Service
6. Navigation Service
7. Timer Service
8. Dashboard Provider
9. Dashboard UI
10. Interrupt Provider
11. Interrupt Overlay
12. Overlay Trigger Logic
13. Scroll Tracker
14. Scroll Intervention UI
15. Persistence Integration
16. App Initialization
17. Testing
18. Polish

This ordering minimizes merge conflicts and dependency issues, since each task builds on previously completed infrastructure and keeps each ACT iteration focused on a single responsibility.
