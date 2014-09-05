use strict;
use Test::More;
use Test::EOFNewlines;

my $cvs_svn = qr{ [\\/]? (?:CVS|\.svn) [\\/] }x;

like('/CVS', $cvs_svn, 'cvs');

done_testing;
