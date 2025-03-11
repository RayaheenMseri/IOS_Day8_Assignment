# Task Manager App

## Overview

The Task Manager App is a simple and efficient task management application built using SwiftUI. It incorporates **MVVM architecture**, **NavigationStack**, **NavigationLink**, and several **accessibility features** to ensure usability across different devices and user needs. The app allows users to create and manage tasks, view completed tasks at the bottom of the list, and enjoy full support for dark mode and dynamic text scaling.

## Features

- **Task List Screen**: Displays a list of tasks with options to navigate to other screens.
- **Add Task Screen**: A screen to allow users to add new tasks.
- **Task Completion**: Tasks can be marked as completed, and completed tasks move to the bottom of the list.
- **Navigation**: Uses **NavigationStack** for screen transitions, and **NavigationLink** for navigating between the task list and add task screens.
- **MVVM Architecture**: The app follows the **Model-View-ViewModel** pattern for clear separation of concerns, making it easier to manage data and UI.
- **Accessibility**: Implements **accessibilityLabel()**, **accessibilityHint()**, and **dynamic text scaling** to improve usability for users with disabilities.
- **Dark Mode Support**: The app supports both light and dark modes for a seamless user experience in different environments.

## Architectural Design

The app follows the **MVVM** (Model-View-ViewModel) pattern:

- **Model**: Represents the task data, including task title, description, and completion status.
- **ViewModel**: Contains the business logic and state of the app, managing a list of tasks. It exposes `@Published` properties that are bound to the views for automatic UI updates.
- **View**: Displays the UI elements, which are composed using SwiftUI components like `NavigationStack`, `NavigationLink`, and `List`. Views are bound to the ViewModel to display real-time data.

### 1. Task List Screen

- Displays a list of tasks and shows their status (completed or pending).
- Allows users to navigate to the Add Task screen to add new tasks.
- Completed tasks are visually distinguished and appear at the bottom of the list.
  
### 2. Add Task Screen

- Provides a simple input form with a **TextField** to enter the task's name.
- A **Button** allows users to add the task to the list.
- After adding the task, the user is navigated back to the Task List screen.

### 3. Task Completion Handling

- Completed tasks are marked and moved to the bottom of the task list.
- Users can toggle the completion state of tasks from the Task List screen.

## Accessibility Features

The app includes several accessibility features to ensure usability for all users:

- **Dynamic Type**: The app supports dynamic text resizing based on user preferences, ensuring that text scales appropriately for readability.
- **VoiceOver Support**: All interactive elements (such as buttons and task titles) are labeled with `accessibilityLabel()` and given clear `accessibilityHint()` information to make the app usable for visually impaired users.
- **Color Contrast**: The app ensures good contrast between text and background colors, making it easy to read in both light and dark mode.

## Dark Mode Support

The Task Manager App adapts seamlessly to both light and dark modes, providing an optimized visual experience regardless of the user's system settings. Colors, buttons, and text styles automatically adjust to match the chosen mode, ensuring clarity and aesthetic consistency.

## Usage

1. **Task List Screen**: Displays all tasks, allows you to view tasks and mark them as completed, and navigate to the Add Task screen.
2. **Add Task Screen**: Allows users to add new tasks via a text input field and submit them to the list.

The app doesn't rely on any external dependencies. It's built solely using SwiftUI, which is part of the iOS SDK.

## Conclusion

The Task Manager App demonstrates how to create a task management solution using modern SwiftUI techniques, MVVM architecture, and important accessibility considerations. It’s an example of creating apps that are both powerful and inclusive, providing a smooth and enjoyable user experience for all users. With features like dynamic text scaling, dark mode support, and an easy-to-use interface, it serves as a solid foundation for more advanced task management applications. 
