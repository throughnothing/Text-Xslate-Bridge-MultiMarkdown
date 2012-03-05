package Text::Xslate::Bridge::MultiMarkdown;
use strict;
use warnings;
use parent qw(Text::Xslate::Bridge);

use Text::MultiMarkdown;

# ABSTRACT: MultiMarkdown 'filter' for Text::Xslate

sub markdown {
    my ( $text ) = @_;
    my $m = Text::MultiMarkdown->new;
    return $m->markdown($text);
}

my %scalar_methods = ( markdown => \&markdown );

__PACKAGE__->bridge( function => \%scalar_methods );

=head1 SYNOPSIS

    use Text::Xslate::Bridge::MultiMarkdown;
     
    my $xslate = Text::Xslate->new(
        module => [ 'Text::Xslate::Bridge::MultiMarkdown' ],
    );

    print $xslate->render_string('<: markdown( "# H1 Heading" ) :>');

=cut

1;
