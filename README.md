# NAME

Test::EOF - Check correct end of files in a project.

<div>
    <p>
    <img src="https://img.shields.io/badge/perl-5.10.1+-blue.svg" alt="Requires Perl 5.10.1+" />
    <img src="https://img.shields.io/badge/coverage-65.4%25-red.svg" alt="coverage 65.4%" />
    <a href="https://github.com/Csson/p5-test-eof/actions?query=workflow%3Amakefile-test"><img src="https://img.shields.io/github/workflow/status/Csson/p5-test-eof/makefile-test" alt="Build status at Github" /></a>
    </p>
</div>

# VERSION

Version 0.0804, released 2021-04-28.

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

# SOURCE

[https://github.com/Csson/p5-test-eof](https://github.com/Csson/p5-test-eof)

# HOMEPAGE

[https://metacpan.org/release/Test-EOF](https://metacpan.org/release/Test-EOF)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2021 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
