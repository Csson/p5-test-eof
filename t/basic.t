use strict;
use Test::More;
use Test::EOFNewlines;
use Cwd;
use File::Spec;

my $cvs_svn = qr{ [\\/]? (?:CVS|\.svn) [\\/] }x;
my $blib = qr{ [\\/]? blib [\\/] (?: libdoc | man\d) $  }x;

like('/CVS/', $cvs_svn, 'cvs');
like('.svn/', $cvs_svn, 'svn');
unlike('/blib/', $blib, 'blib (shouldnt match)');
like('/blib/libdoc', $blib, 'blib libdoc');
like('blib/man3', $blib, 'blib man3');
unlike('/blib/man', $blib, 'blib man3 (shouldnt match)');

all_perl_files_ok(File::Spec->catdir(cwd(), 'lib'));
all_perl_files_ok('t/basic.t', { minimum_newlines => 3 });
done_testing;


