# University Library Search Application

## Overview
This is a simple library search application designed for a university setting. It allows users to search for books in the university library system using a web interface. The application uses Perl for the backend and HTML/jQuery for the frontend, demonstrating integration between these technologies.

## Features
- Search functionality for books by title, author, or year
- Responsive web interface
- Backend API using Perl
- Frontend using HTML, CSS, and jQuery

## Prerequisites
To run this application, you need:
- Perl 5.x
- CGI module for Perl
- JSON module for Perl
- HTTP::Server::Simple::CGI module for Perl
- File::Slurp module for Perl

## Installation
1. Clone this repository:
git clone https://github.com/tradervijeth/library-search-app
cd library-search-app

2. Ensure Perl and required modules are installed:
cpan CGI
cpan JSON
cpan HTTP::Server::Simple::CGI
cpan File::Slurp

## Usage
1. Start the Perl server:
perl server.pl
This will start the server on http://localhost:8080

2. Open a web browser and go to http://localhost:8080
3. Enter a search term in the input field.
4. Click the "Search" button or press Enter.
5. View the search results in the table below.

## File Structure
- `index.html`: Frontend HTML file with embedded JavaScript/jQuery
- `search.pl`: Perl script for backend search functionality
- `server.pl`: Perl script that serves as a simple HTTP server

## Development
This project is set up for development using Visual Studio Code. To contribute:

1. Fork the repository
2. Create a new branch for your feature
3. Make your changes
4. Push to your fork and submit a pull request

## Troubleshooting
If you encounter any issues:
- Ensure all required Perl modules are installed
- Check that all files (`index.html`, `search.pl`, `server.pl`) are in the same directory
- Verify that the server is running and you're accessing the correct port

## Future Enhancements
- Integration with a real database system
- Advanced search options (e.g., filtering, sorting)
- User authentication and personalized results
- Integration with other university systems

