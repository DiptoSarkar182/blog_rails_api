# Blog Rails API

## Introduction

This is a backend which handles blogs CRUD operation with user authentication and authorization.

## Frontend Repository and Live Link
- FE Repo: [https://github.com/DiptoSarkar182/blog_FE](https://github.com/DiptoSarkar182/blog_FE)
- Live Link: [https://blog-fe-sigma.vercel.app/](https://blog-fe-sigma.vercel.app/)

## Routes
All the routes can be found [here](/config/ROUTES.md)

## Features
- User authentication and authorization using Devise and Devise-JWT
- CRUD operations for blogs
- Image upload and management using Active Storage and Cloudinary
- JSON responses for API endpoints

## Technology Used

- Ruby on Rails --api
- PostgreSQL
- Devise & Devise-JWT
- Active Storage
- Cloudinary

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development.

### Prerequisites

You need to have Ruby and Rails installed on your machine. See [this guide](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails) for instructions on setting up Rails.

### Installing

1. Clone the repository: `git clone https://github.com/DiptoSarkar182/blog_rails_api`
2. Navigate into the project directory: `cd blog_rails_api`
3. Install the dependencies: `bundle install`
4. Set up the database: `rails db:create db:migrate`
5. Start the server: `rails server`
6. Visit `http://localhost:3000/` in your browser to access the application.
