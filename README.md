# Flutter Passkey Demo

## Overview
- Demo application for passkey authentication using Flutter
- Implementation example with Firebase Authentication

## Features
- Sign up with passkey
- Login with passkey
- User authentication state management
- Top page display

## Tech Stack
- Flutter
- Firebase Authentication
- Passkey Authentication

## Setup
### Prerequisites
- Flutter SDK
- Firebase project configuration
- Passkey-compatible device

### Installation Steps
1. Clone repository
2. Install dependencies
3. Place Firebase configuration files
4. Set up environment variables:
   ```bash
   # For development
   flutter run --dart-define=PASSKEY_API_BASE_URL=http://localhost:5001

   # For production
   flutter run --dart-define=PASSKEY_API_BASE_URL=https://your-firebase-functions-url
   ```
5. Run application

### Environment Variables
| Variable | Description | Default |
|----------|-------------|---------|
| PASSKEY_API_BASE_URL | Firebase Functions endpoint URL | http://localhost:5001 |

## Endpoints (Firebase functions)
### register_begin
Initiates the passkey registration process.

### register_finish
Completes the passkey registration process.

### authenticate_begin
Initiates the passkey authentication process.

### authenticate_finish
Completes the passkey authentication process.

## Flows
### Account registration
1. Enter your user name
2. Click registration button
3. User account will be created with anonymous user registration

### Passkey registration
1. Call `register_begin` API
2. Create keys using challenge received from API
3. Complete registration with `register_finish` API

### Passkey authentication
1. Call `authenticate_begin` API
2. Verify user with platform authenticator
3. Complete authentication with `authenticate_finish` API

## Security Notes
- Never commit sensitive information like API endpoints directly in the code
- Use environment variables for configuration
- Keep your Firebase configuration files secure
- Follow security best practices for passkey implementation

## Contact
- Developer contact information


