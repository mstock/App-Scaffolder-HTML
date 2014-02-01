package App::Scaffolder::CommandTest::htmlTest;
use parent qw(Test::Class);

use strict;
use warnings;

use Carp;
use Test::More;
use App::Cmd::Tester;
use Path::Class::Dir;
use Test::File;
use Test::File::ShareDir '-share' => {
	'-dist' => { 'App-Scaffolder-HTML' => Path::Class::Dir->new(qw(share)) }
};
use Directory::Scratch;
use App::Scaffolder;
use App::Scaffolder::Command::html;

sub app_test : Test(4) {
	my ($self) = @_;

	my $scratch = Directory::Scratch->new();
	my $result = test_app('App::Scaffolder' => [
		qw(html --name index --template html5 --target), $scratch->base()
	]);
	is($result->error, undef, 'threw no exceptions');
	my $file = $scratch->base()->file('index.html');
	file_exists_ok($file);

	$scratch = Directory::Scratch->new();
	$result = test_app('App::Scaffolder' => [
		qw(html --name index --template xhtml10strict --target), $scratch->base()
	]);
	is($result->error, undef, 'threw no exceptions');
	$file = $scratch->base()->file('index.xhtml');
	file_exists_ok($file);
}


1;
