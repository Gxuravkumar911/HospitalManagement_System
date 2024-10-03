# Hospital Employee Portal

Welcome to the Hospital Employee Portal, a simple Rails application that provides receptionists and doctors with the ability to manage patient records and view patient registration trends.

## Features

-   Two user roles: Receptionist and Doctor
-   Authentication for both roles using Devise
-   Graphical representation of patient registrations
-   Proper user role-based redirection after login/signup

## Getting Started

1. Clone the repository
2. Install required gems: `bundle install`
3. Set up the database: `rails db:create && rails db:migrate`
4. Start the Rails server: `rails server`

## User Roles

-   **Receptionist:** Can register new patients, perform CRUD operations on patient records.
-   **Doctor:** Can view patient records and see a graph of patient registrations.

## Usage

1. Access the application in your web browser: `http://localhost:3000`
2. Sign up using your email, password, and select your role (Receptionist/Doctor).
3. Log in with your credentials.
4. Based on your role, you'll be directed to either the receptionist or doctor page.
5. Receptionists can register new patients and manage patient records.
6. Doctors can view patient records and see a graph representing patient registrations.
