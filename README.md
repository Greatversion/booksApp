
# BooksApp

A Flutter application that displays a list of services from an API, with a searchable interface. This app is built using MVVM architecture and utilizes the Provider package for state management and the Dio package for handling network requests.

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Project Structure](#project-structure)
- [Technologies Used](#technologies-used)
- [API Details](#api-details)


## Features

- Fetches and displays a list of services from a provided API endpoint.
- Instant search functionality to filter services by name or description.
- Toggle between ListView and GridView display for the services.
- Displays service details, including name, ID (with custom text), cost, and a formatted date.
- Implements MVVM architecture using Provider for state management.
- Gradient background and custom UI design for each service card.

## Screenshots
![I![IMG-20241110-WA0001](https://github.com/user-attachments/assets/06be277d-277b-4d76-a549-99405943ac35)
M![IMG-20241110-WA0001](https://github.com/user-attachments/assets/e3689b9f-c13e-4d9b-93ac-fc51a1d21446)
![IMG-20241110-WA0003](https://github.com/user-attachments/assets/5e5c5228-96b5-4aad-b369-1c5aea275b61)
![IMG-20241110-WA0002](https://github.com/user-attachments/assets/4483c6dc-0c86-4474-95a4-38dfa2f1013b)
![IMG-20241110-WA0005](https://github.com/user-attachments/assets/e276b07d-efc1-4264-94e9-1cafd03380a7)


## Getting Started

These instructions will help you set up and run the project on your local machine for development and testing purposes.

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (>=2.0.0)
- Android Studio or Visual Studio Code with Flutter and Dart plugins
- A connected device or emulator to run the app

### Installation

1. **Clone the Repository**
   ```bash
   git clone https://github.com/your-username/flutter-service-list.git
   cd flutter-service-list
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the App**
   ```bash
   flutter run
   ```

## Project Structure

The project follows an MVVM architecture and is structured as follows:

```
lib/
├── models/                   # Model classes for service data
├── screens/                  # UI screens (ServiceListScreen)
├── view_models/              # ViewModel classes for state management
├── services/                 # Service classes for API calls (APIService)
├── utils/                    # Utility widgets (AnnouncementBannerCard)
├── main.dart                 # Main entry point of the app
```

## Technologies Used

- **Flutter** - Framework for building cross-platform applications.
- **Provider** - State management solution for managing app state.
- **Dio** - HTTP client for making API calls.
- **Intl** - Package for date formatting.
- **MVVM Architecture** - Clean architecture pattern for organizing code.

## API Details

The app fetches data from the following endpoint:
- **Endpoint**: `https://api.thenotary.app/customer/login`
- **Method**: POST
- **Request Body**:
  ```json
  {
    "email": "your-email@example.com"
  }
  ```
- **Response**:
  - The API returns a `data` object with an array of `availableServices`.
  - Each service includes `serviceId`, `serviceName`, `serviceCost`, and `serviceDescription`.

## Usage

1. **Search for a Service**
   - Use the search bar at the top to filter services by name or description.

2. **Switch between List and Grid Views**
   - Tap the icon in the app bar to toggle between ListView and GridView layouts.

3. **Custom ID Display**
   - Specific `serviceId` values are displayed with custom text:
     - `LSA_ONLINE` → "Real Estate Notarization"
     - `LSA_OFFLINE` → "Real Estate Offline Notarization"
     - Other IDs will display their original values.




### Additional Notes
- Replace placeholders like `your-username` with your GitHub username if you’re sharing the repository.
- Add screenshots or GIFs under the **Screenshots** section for a more visual README file.
- Include any additional instructions for running tests or configuring API keys, if necessary.
