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
- A web server capable of executing Perl scripts (e.g., Apache with mod_perl)

## Installation
1. Clone this repository:
git clone https://github.com/yourusername/library-search-app.git
cd library-search-app

2. Ensure Perl and required modules are installed:
cpan CGI
cpan JSON

3. Set up your web server to serve the `index.html` file and execute the `search.pl` script.

## Usage
1. Open `index.html` in a web browser.
2. Enter a search term in the input field.
3. Click the "Search" button or press Enter.
4. View the search results in the table below.

## File Structure
- `index.html`: Frontend HTML file with embedded JavaScript/jQuery
- `search.pl`: Perl script for backend search functionality

## Development
This project is set up for development using Visual Studio Code. To contribute:

1. Fork the repository
2. Create a new branch for your feature
3. Make your changes
4. Push to your fork and submit a pull request

## Future Enhancements
- Integration with a real database system
- Advanced search options (e.g., filtering, sorting)
- User authentication and personalized results
- Integration with other university systems


