use 5.006;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME              => 'Email::Store::Thread',
  VERSION_FROM      => 'lib/Email/Store/Thread.pm',
  (eval { ExtUtils::MakeMaker->VERSION(6.21) }
    ? (LICENSE => 'perl')
    : ()
  ),
  PREREQ_PM         => {
    'Email::Folder' => 0,
    'Mail::Thread' => 2.5,
    'Email::Store' => 0,
  },
);

print "Don't forget you're going to have to run Email::Thread->setup
again to create the new table.\n";
