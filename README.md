## task_management

# Task Manager Application

# Overview
The Task Manager Application is designed to help users efficiently manage their tasks by providing functionality to view, update, and delete tasks. Built with a focus on Clean Architecture, the application separates concerns into three distinct layers: Data, Domain, and Presentation. This separation enhances maintainability, scalability, and testability.

# Features
View Tasks: Users can retrieve and view a list of all tasks.
Update Task Status: Users can mark tasks as completed or not completed.
Delete Tasks: Users have the ability to delete tasks from their list.

# Architecture
The application follows a three-tier structure based on Clean Architecture principles:

1. Data Layer
The Data Layer is responsible for data management. It handles data retrieval, storage, and network communication. This layer interacts with various data sources, such as local databases, remote APIs, or any other external services. Key components include:

Services Implementation: Abstract the data sources and provide a unified interface for data access.
Data Sources: Implementations for fetching data from different sources (e.g., REST API, local database).

2. Domain Layer
The Domain Layer contains the business logic of the application. It defines the core functionality and rules that govern the application, independent of any frameworks or UI concerns. Key components include:

Entities: Represent the core objects of the application (e.g., Task).
Use Cases: Define specific actions the application can perform (e.g., GetTasks, AddNewTask, UpdateTask, DeleteTask). This layer ensures that the application logic remains clean and testable.
Services: Abstract classes

3. Presentation Layer
The Presentation Layer is responsible for the user interface and user interaction. It communicates with the Domain Layer to display data and update the UI based on user actions. Key components include:

State Managment: For state management , cubit is used  and it is managing the data needed for the UI and handle user interactions. They transform domain models into UI-friendly formats.
UI Components: Include all the visual elements that users interact with, such as lists, buttons, and forms. This layer is designed to be as simple as possible, focusing solely on presentation.

Best Practices
Separation of Concerns: Each layer has a distinct responsibility, promoting cleaner and more maintainable code.
Dependency Injection: Dependencies are injected into components, making the codebase more modular and easier to test.

# Getting Started
To run the Task Manager Application locally:

1. Clone the repository.
2. Install the necessary dependencies by using flutter pub get command
3. Build runner by using dart run build_runner build --delete-conflicting-outputs
4. Run the application.

# Conclusion
The Task Manager Application exemplifies Clean Architecture principles, ensuring that the codebase remains organized and maintainable as it grows. This structure not only improves the development experience but also enhances the application's scalability and testability.
