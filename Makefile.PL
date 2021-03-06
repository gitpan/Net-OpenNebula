
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.020.
use strict;
use warnings;



use ExtUtils::MakeMaker ;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Access OpenNebula RPC via Perl.",
  "AUTHOR" => "Jan Gehring <jfried\@rexify.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Net-OpenNebula",
  "EXE_FILES" => [],
  "LICENSE" => "apache",
  "NAME" => "Net::OpenNebula",
  "PREREQ_PM" => {
    "Data::Dumper" => 0,
    "RPC::XML" => 0,
    "RPC::XML::Client" => 0,
    "XML::Simple" => 0,
    "constant" => 0,
    "strict" => 0,
    "version" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.300.0",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Data::Dumper" => 0,
  "RPC::XML" => 0,
  "RPC::XML::Client" => 0,
  "XML::Simple" => 0,
  "constant" => 0,
  "strict" => 0,
  "version" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



