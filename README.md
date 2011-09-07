Erlang Battle.net Daemon
========================

Building
--------

To build and install:

	$ cd rebar;
	$ ./bootrap;
	$ cd ..;
	$ rebar/rebar get-deps;
	$ rebar/rebar compile;

To update dependencies:

	$ rebar/rebar update-deps;

To generate documentation:

	$ rebar/rebar doc;

To do cross-reference analysis:

	$ rebar/rebar xref;

To run tests:

	$ rebar/rebar eunit;

To generate a release:

	$ rebar/rebar generate;

To clean up:

	$ rebar/rebar clean;
