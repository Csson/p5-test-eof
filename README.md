# NAME

Test::EOFNewlines - Check correct end of files in your project.

# SYNOPSIS

    use Test::EOFNewlines;

    all_perl_files_ok('lib/Test::EOFNewlines', { minimum_newlines => 2 });

    done_testing();

# DESCRIPTION

Deprecated. Renamed [Test::EOF](https://metacpan.org/pod/Test::EOF). This distribution will soon be removed.

This module is used to check the end of files of Perl modules and scripts. It is a way to make sure that files and with (at least) one line break.

It assumes that only "\\n" are used as line breaks. You might want to check if your files contains any faulty line breaks, use [Test::EOL](https://metacpan.org/pod/Test::EOL) for that first.

There is only one function:

## all\_perl\_files\_ok

    all_perl_files_ok(@directories, { minimum_newlines => 1, maximum_newlines => 2 })

Checks all Perl files (basically `*.pm` and `*.pl`) in `@directories` and sub-directories. If `@directories` is empty the default is the parent of the current directory.

**`minimum_newlines => $minimum`**

Default: `1`

Sets the number of consecutive newlines that files checked at least should end with.

**`maximum_newlines => $maximum`**

Default: `miminum_newlines`

Sets the number of consecutive newlines that files checked at most should end with.

# ACKNOWLEDGEMENTS

[Test::EOL](https://metacpan.org/pod/Test::EOL) was used as an inspiration.

# SEE ALSO

- [Test::EOL](https://metacpan.org/pod/Test::EOL)
- [Test::NoTabs](https://metacpan.org/pod/Test::NoTabs)
- [Test::More](https://metacpan.org/pod/Test::More)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT

Copyright 2014- Erik Carlsson

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
