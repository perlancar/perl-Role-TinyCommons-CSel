package Role::TinyCommons::Tree::Node;

# DATE
# VERSION

use Data::CSel ();
use Role::Tiny;
use Role::Tiny::With;

with 'Role::TinyCommons::Tree::Node';

sub select {
    my $self = shift;

    my $opts;
    if (ref($_[0]) eq 'HASH') {
        $opts = shift;
    } else {
        $opts = {};
    }

    my $expr = shift;

    Data::CSel::csel($opts, $expr, $self);
}

1;
# ABSTRACT: Role to add select() to select nodes using Data::CSel

=head1 DESCRIPTION

This role adds a C<select()> method to select nodes using L<Data::CSel>.


=head1 REQUIRED ROLES

L<Role::TinyCommons::Tree::Node>

=head1 PROVIDED METHODS

=head2 select([ \%opts, ] $expr)


=head1 SEE ALSO

L<Data::CSel>
