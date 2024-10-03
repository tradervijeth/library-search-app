#!/usr/bin/perl
use strict;
use warnings;
use CGI;
use JSON;

my $cgi = CGI->new;
print $cgi->header('application/json');

# Mock database of books
my @books = (
    { title => "Perl for Beginners", author => "John Doe", year => 2020 },
    { title => "Advanced Web Development", author => "Jane Smith", year => 2019 },
    { title => "University Information Systems", author => "Bob Johnson", year => 2021 },
    { title => "Database Design for Higher Education", author => "Alice Brown", year => 2018 },
    { title => "Modern Library Management", author => "Charlie Davis", year => 2022 }
);

my $query = lc($cgi->param('query') || '');
my @results = grep { 
    lc($_->{title}) =~ /$query/ || 
    lc($_->{author}) =~ /$query/ || 
    $_->{year} =~ /$query/
} @books;

print encode_json(\@results);