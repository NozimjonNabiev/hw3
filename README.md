# HW3
# Library Management App

This Flutter application is a simple library management system created using Flutlab.io. It allows users to navigate through different screens for managing books and users.

## Running the App

To run this project, use Flutlab.io:

1. Open Flutlab.io in your web browser.

2. Create a new project named "HW3".

3. Copy the contents of the `lib` directory from this repository to the corresponding location in the Flutlab.io project.

4. Run the project using the Flutlab.io interface.

## Project Overview

### Screens

- **HomeScreen**: Displays a welcome message and includes floating action buttons to navigate to different screens.
- **ViewBooksScreen**: Shows a list of books with details like title, author, etc. Allows tapping on a book to view its details.
- **AddBookScreen**: Provides a form to add a new book with fields for details like title, author, etc. Displays a success message upon adding the book.
- **UserDetailsScreen**: Displays details of a user, showcasing user-specific information.
- **ViewUsersScreen**: Displays a list of users. Tapping on a user item shows user details.

### Models (if used)

- **Book**: Represents a book item with properties like title, author, description, etc.
- **User**: Represents user information such as name, email, etc.

### Folder Structure

- `lib/screens/`: Contains individual screen files.
- `lib/models/`: Includes data model files, if used.
- `lib/main.dart`: Entry point of the application.

## Dependencies

- `flutter`: SDK for building native applications using Flutter.
- Other dependencies might include `provider`, `material`, etc.
