# NAME

Test::EOF - Check correct end of files in a project.

# VERSION

Version 0.0701, released 2015-01-17.

# SYNOPSIS

    use Test::EOF;

    all_perl_files_ok('lib/Test::EOF', { minimum_newlines => 2 });

    done_testing();

# DESCRIPTION

This module is used to check the end of files of Perl modules and scripts. It is a way to make sure that files and with (at least) one line break.

It uses `\v` to look for line breaks. If you want to ensure that only `\n` are used as line break, use [Test::EOL](https://metacpan.org/pod/Test::EOL) for that first.

There is only one function:

## all\_perl\_files\_ok

    all_perl_files_ok(@directories, { minimum_newlines => 1, maximum_newlines => 2 });

    all_perl_files_ok(@directories, { strict => 1 });

Checks all Perl files (basically `*.pm` and `*.pl`) in `@directories` and sub-directories. If `@directories` is empty the default is the parent of the current directory.

**`minimum_newlines => $minimum`**

Default: `1`

Sets the number of consecutive newlines that files checked at least should end with.

**`maximum_newlines => $maximum`**

Default: `mininum_newlines`

Sets the number of consecutive newlines that files checked at most should end with.

If `maximum_newlines` is **less** than `minimum_newlines` it gets set to `minimum_newlines`.

**`strict`**

If `strict` is given a true value, both `minimum_newlines` and `maximum_newlines` will be set to `1`. This option has precedence over the other two.

# ACKNOWLEDGEMENTS

[Test::EOL](https://metacpan.org/pod/Test::EOL) was used as an inspiration.

# SEE ALSO

- [Dist::Zilla::Plugin::Test::EOF](https://metacpan.org/pod/Dist::Zilla::Plugin::Test::EOF)
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

# SOURCE

[https://github.com/Csson/p5-test-eof](https://github.com/Csson/p5-test-eof)

# HOMEPAGE

[https://metacpan.org/release/Test-EOF](https://metacpan.org/release/Test-EOF)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Erik Carlsson <info@code301.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
