# SMS Notification Application

This is a simple web application built with Ruby on Rails that allows users to send SMS notifications using the Twilio API. Users can sign up, log in, and view their SMS notification history.

## Features

- User authentication: Users can sign up, log in, and log out.
- Sending SMS notifications: Users can send SMS notifications to specified phone numbers.
- SMS notification history: Users can view a history of their sent SMS notifications.
- Search functionality: Users can search their SMS notification history by recipient phone number or status.
- Pagination: SMS notification history is paginated for better navigation.

## Technologies Used

- Ruby on Rails: A web application framework written in Ruby.
- Twilio API: For sending SMS notifications.
- PostgreSQL: Database management system.
- Devise: A flexible authentication solution for Rails.
- Pagy: A lightweight pagination gem.
- PgSearch: For adding full-text search capabilities using PostgreSQL.

## Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your_username/sms-notification-app.git

2. **Install dependencies:**
    
    ``` 
    bundle install


3. **Set up Twilio credentials:**
    ``` 
    Rename .env.example to .env and add your Twilio API credentials.

4. **Create database:**
    ``` 
    rails db:create

5. **Execute database migrations:**
    ``` 
    rails db:migrate

6. **Load the database with seed:**
    ``` 
    rails db:seed

7. **Start the server:**
    ``` 
    rails server

8. **rails server:**
    ``` 
    Open your browser and visit http://localhost:3000 to use the application.