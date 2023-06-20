#!/usr/bin/perl

use strict;
use warnings;

# Include any relevant modules
use LWP::Simple;
use URI;

# Set variables
my $url = "https://www.communitygardensforall.org";

# Collect the HTML source from the given URL
my $html = get($url);

# Parse the HTML source
my $URI = URI->new($url);
my $domain = $URI->host;

# Extract the relevant HTML elements
while ($html =~ m/<a[^>]* href=(["'])(.*?)\1[^>]*>(.*?)<\/a>/) {
	my $link = $2;
	my $text = $3;
	if ($link =~ m/^\//) {
		$link = "https://$domain$link";
	}
	if ($link !~ /#/) {
		# Print the results
		print "$link : $text\n";
	}
}

# Get the list of resources associated with the given URL
my @resources = ();
if ($html =~ m/<ul[^>]* class="resources">(.*?)<\/ul>/s) {
	my $resource_list = $1;
	while ($resource_list =~ m/<li[^>]*><a[^>]* href=(["'])(.*?)\1[^>]*>(.*?)<\/a>/s) {
		my $link = $2;
		my $text = $3;
		if ($link =~ m/^\//) {
			$link = "https://$domain$link";
		}
		if ($link !~ /#/) {
			# Store the results
			push(@resources, [$link, $text]);
		}
	}
}

# Print the list of resources
foreach my $resource (@resources) {
	my ($link, $text) = @$resource;
	print "$link : $text\n";
}

# Get the list of organizations associated with the given URL
my @organizations = ();
if ($html =~ m/<ul[^>]* class="orgs">(.*?)<\/ul>/s) {
	my $org_list = $1;
	while ($org_list =~ m/<li[^>]*><a[^>]* href=(["'])(.*?)\1[^>]*>(.*?)<\/a>/s) {
		my $link = $2;
		my $text = $3;
		if ($link =~ m/^\//) {
			$link = "https://$domain$link";
		}
		if ($link !~ /#/) {
			# Store the results
			push(@organizations, [$link, $text]);
		}
	}
}

# Print the list of organizations
foreach my $org (@organizations) {
	my ($link, $text) = @$org;
	print "$link : $text\n";
}

# Get the list of news associated with the given URL
my @news = ();
if ($html =~ m/<ul[^>]* class="news">(.*?)<\/ul>/s) {
	my $news_list = $1;
	while ($news_list =~ m/<li[^>]*><a[^>]* href=(["'])(.*?)\1[^>]*>(.*?)<\/a>/s) {
		my $link = $2;
		my $text = $3;
		if ($link =~ m/^\//) {
			$link = "https://$domain$link";
		}
		if ($link !~ /#/) {
			# Store the results
			push(@news, [$link, $text]);
		}
	}
}

# Print the list of news
foreach my $news_item (@news) {
	my ($link, $text) = @$news_item;
	print "$link : $text\n";
}

# Get the list of stories associated with the given URL
my @stories = ();
if ($html =~ m/<ul[^>]* class="stories">(.*?)<\/ul>/s) {
	my $stories_list = $1;
	while ($stories_list =~ m/<li[^>]*><a[^>]* href=(["'])(.*?)\1[^>]*>(.*?)<\/a>/s) {
		my $link = $2;
		my $text = $3;
		if ($link =~ m/^\//) {
			$link = "https://$domain$link";
		}
		if ($link !~ /#/) {
			# Store the results
			push(@stories, [$link, $text]);
		}
	}
}

# Print the list of stories
foreach my $story (@stories) {
	my ($link, $text) = @$story;
	print "$link : $text\n";
}

# Get the list of events associated with the given URL
my @events = ();
if ($html =~ m/<ul[^>]* class="events">(.*?)<\/ul>/s) {
	my $events_list = $1;
	while ($events_list =~ m/<li[^>]*><a[^>]* href=(["'])(.*?)\1[^>]*>(.*?)<\/a>/s) {
		my $link = $2;
		my $text = $3;
		if ($link =~ m/^\//) {
			$link = "https://$domain$link";
		}
		if ($link !~ /#/) {
			# Store the results
			push(@events, [$link, $text]);
		}
	}
}

# Print the list of events
foreach my $event (@events) {
	my ($link, $text) = @$event;
	print "$link : $text\n";
}

# Get the list of resources associated with the given URL
my @volunteering = ();
if ($html =~ m/<ul[^>]* class="volunteering">(.*?)<\/ul>/s) {
	my $volunteering_list = $1;
	while ($volunteering_list =~ m/<li[^>]*><a[^>]* href=(["'])(.*?)\1[^>]*>(.*?)<\/a>/s) {
		my $link = $2;
		my $text = $3;
		if ($link =~ m/^\//) {
			$link = "https://$domain$link";
		}
		if ($link !~ /#/) {
			# Store the results
			push(@volunteering, [$link, $text]);
		}
	}
}

# Print the list of volunteering opportunities
foreach my $volunteering_opp (@volunteering) {
	my ($link, $text) = @$volunteering_opp;
	print "$link : $text\n";
}

# Get the list of locations associated with the given URL
my @locations = ();
if ($html =~ m/<ul[^>]* class="locations">(.*?)<\/ul>/s) {
	my $locations_list = $1;
	while ($locations_list =~ m/<li[^>]*><a[^>]* href=(["'])(.*?)\1[^>]*>(.*?)<\/a>/s) {
		my $link = $2;
		my $text = $3;
		if ($link =~ m/^\//) {
			$link = "https://$domain$link";
		}
		if ($link !~ /#/) {
			# Store the results
			push(@locations, [$link, $text]);
		}
	}
}

# Print the list of locations
foreach my $location (@locations) {
	my ($link, $text) = @$location;
	print "$link : $text\n";
}