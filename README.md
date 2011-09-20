Erlang Battle.net Daemon
========================

Introduction
------------

EBND (Erlang Battle.net Daemon) is a daemon for servicing Battle.net 2.0 clients
using the Google Protocol Buffers-based protocol (typically Diablo 3). It is
written in Erlang, and therefore theoretically scales horizontally no matter how
many clients you throw at it.

Building
--------

First of all, you need Rebar. You can install it yourself, or do:

	$ cd rebar;
	$ ./bootstrap;
	$ cp rebar /usr/local/bin;

To build:

	$ rebar get-deps;
	$ rebar compile;

To update dependencies:

	$ rebar update-deps;

To generate documentation:

	$ rebar doc;

To do cross-reference analysis:

	$ rebar xref;

To run tests:

	$ rebar eunit;

To generate a release:

	$ rebar generate;

To clean up:

	$ rebar clean;
