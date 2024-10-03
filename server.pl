#!/usr/bin/perl
use strict;
use warnings;
use HTTP::Server::Simple::CGI;
use base qw(HTTP::Server::Simple::CGI);
use File::Slurp;

my %dispatch = (
    '/' => \&respond_root,
    '/search.pl' => \&respond_search,
);

sub handle_request {
    my $self = shift;
    my $cgi  = shift;
   
    my $path = $cgi->path_info();
    my $handler = $dispatch{$path};
 
    if (ref($handler) eq "CODE") {
        print "HTTP/1.0 200 OK\r\n";
        $handler->($cgi);
    } else {
        print "HTTP/1.0 404 Not found\r\n";
        print $cgi->header,
              $cgi->start_html('Not found'),
              $cgi->h1('Not found'),
              $cgi->end_html;
    }
}

sub respond_root {
    my $cgi = shift;
    print $cgi->header;
    print read_file('index.html');
}

sub respond_search {
    my $cgi = shift;
    do 'search.pl';
}

my $port = 8080;
my $server = __PACKAGE__->new($port);
print "Server started on http://localhost:$port\n";
$server->run();