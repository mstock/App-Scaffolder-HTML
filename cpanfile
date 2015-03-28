requires "App::Scaffolder" => "0.002000";
requires "App::Scaffolder::Command" => "0";
requires "MRO::Compat" => "0";
requires "Path::Class::Dir" => "0";
requires "parent" => "0";
requires "strict" => "0";
requires "warnings" => "0";

on 'build' => sub {
  requires "Module::Build" => "0.3601";
};

on 'test' => sub {
  requires "App::Cmd::Tester" => "0";
  requires "App::Scaffolder" => "0";
  requires "Carp" => "0";
  requires "Directory::Scratch" => "0";
  requires "File::Find" => "0";
  requires "File::Temp" => "0";
  requires "Test::Class" => "0";
  requires "Test::File" => "0";
  requires "Test::File::ShareDir" => "0";
  requires "Test::More" => "0.88";
};

on 'configure' => sub {
  requires "Module::Build" => "0.3601";
};

on 'develop' => sub {
  requires "Test::CPAN::Changes" => "0.19";
  requires "version" => "0.9901";
};
