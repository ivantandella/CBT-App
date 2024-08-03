# Computer-Based Test (CBT) System - Laravel Web Application

## Project Description
The Computer-Based Test (CBT) System is a web-based application developed using Laravel. It enables educational institutions to create, manage, and conduct online tests or exams. The system allows users to create questions, set up exams, and manage test-taker results with a user-friendly interface.

## Key Features
- Test Creation: Create and manage questions.
- Exam Setup: Configure exams with time limits, question randomization, and pass criteria.
- User Management: Admins can manage user roles, including test-takers and instructors.
- Scoring: Scoring and results calculation.
- Authentication: Secure login and registration for users.

## Prerequisites
- PHP >= 7.3
- Composer
- Laravel >= 8.54
- MySQL 

## Installation
Follow these steps to install and run the application:

1. Clone the Repository

`git clone https://github.com/ivantandella/CBT-App.git`

`cd CBT-App`

2. Install Dependencies

Run Composer to install PHP dependencies:

`composer install`

3. Configure Environment

Copy the .env.example file to .env and set the required configuration

`cp .env.example .env`

4. Generate Application Key

Run the command to generate a Laravel application key:

`php artisan key:generate`

5. Run Migrations

Execute migrations to create the necessary database tables:

`php artisan migrate`

6. Run the Server

You can start the local Laravel server with:

`php artisan serve`

Access the application in your browser at `http://localhost:8000`.

## License
This project is licensed under the MIT License.
