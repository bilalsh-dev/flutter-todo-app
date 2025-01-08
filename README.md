# To-Do App with Hive Local Storage

A simple, functional to-do app built with Flutter that allows users to add, update, and delete tasks. This app incorporates local data persistence using Hive, ensuring your tasks are saved even after closing the app.

## Features

- **Add Tasks**: Create new to-do tasks with customizable titles.
- **Mark as Completed**: Check tasks as completed or uncheck them.
- **Delete Tasks**: Remove tasks with an intuitive slide-to-delete feature.
- **Local Data Storage**: Persist tasks using Hive for offline functionality.
- **Default Tasks**: Preloaded tasks for first-time users.

## Tech Stack

- **Flutter**: UI toolkit for building natively compiled apps.
- **Hive**: Lightweight and fast NoSQL database for local data storage.

## Implementation Highlights

### Task Management

- Tasks are stored as a `List` with a `taskName` (String) and `isCompleted` (Boolean).
- Dynamic UI updates based on user actions (e.g., checking off tasks or deleting them).

### Slidable Widget

- Integrated for a smooth slide-to-delete experience.
- Added border-radius customization for a polished look.

### Hive Local Database

- **Initialization**: The app initializes Hive in the `main.dart` file.
- **Data Persistence**: Tasks are saved in a Hive box named `myBox` and retrieved upon reopening the app.
- **Database Operations**:
  - **Create Initial Data**: Adds default tasks on the app's first run.
  - **Load Data**: Loads saved tasks from Hive.
  - **Update Database**: Syncs task changes (e.g., adding or deleting tasks) to Hive.

### State Management

- **initState**: Checks if the app is opened for the first time and initializes default tasks or loads existing ones.
- **Real-Time Updates**: Updates the Hive database whenever a user interacts with the tasks.

## Getting Started

### Prerequisites

- Flutter SDK installed on your machine.
- Knowledge of Dart programming language.

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/bilalsh-dev/flutter-todo-app.git
   cd todo-app
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

### Dependencies

Add these dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  hive: ^2.2.3
  hive_flutter: ^1.1.0

dev_dependencies:
  hive_generator: ^2.0.1
  build_runner: ^2.1.11
```

## Folder Structure

```
lib/
├── data/
│   └── database.dart    # Hive database logic
├── pages/
│   └── homepage.dart    # Main app UI
├── util/
│   └── todotile.dart    # Todo Item
└── main.dart            # App entry point
```

## Usage

- **Add Tasks**: Tap the "+" button to create a task.
- **Mark Tasks**: Tap the checkbox to mark as complete/incomplete.
- **Delete Tasks**: Slide a task to the left to delete it.
- **Local Persistence**: All tasks are saved locally using Hive.

## Demo

![To-Do App Demo](banner-image-link)

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.
