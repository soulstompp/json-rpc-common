#!/usr/bin/perl

package JSON::RPC::Common::Procedure::Return;
use Moose;

use Carp qw(croak);

use JSON::RPC::Common::TypeConstraints qw(JSONValue);
use JSON::RPC::Common::Procedure::Return::Error;

use namespace::clean -except => [qw(meta)];

has result => (
	isa => "Any",
	is  => "ro",
	predicate => "has_result",
);

has id => (
	isa => JSONValue,
	is  => "ro",
	predicate => "has_id",
);

has error => (
	isa => "JSON::RPC::Common::Procedure::Return::Error",
	is  => "ro",
	predicate => "has_error",
);

sub deflate {
	my $self = shift;

	my $version = $self->version;

	$version = "undefined" unless defined $version;

	croak "Deflating a procedure return of the class " . ref($self) . " is not supported (version is $version)";
}

__PACKAGE__->meta->make_immutable;

__PACKAGE__

__END__

=pod

=head1 NAME

JSON::RPC::Common::Procedure::Return - 

=head1 SYNOPSIS

	use JSON::RPC::Common::Procedure::Return;

=head1 DESCRIPTION

=cut



