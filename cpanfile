requires 'perl', '5.10.1';

requires 'Cwd';
requires 'File::Find';
requires 'File::ReadBackwards';
requires 'Test::Builder';

on test => sub {
    requires 'Test::More', '0.96';
};
