# class Employee
package Employee;
use Person;
use strict;
our @ISA = qw(Person);    # inherits from Person

#constructor
sub new {
    my ($class) = @_;

    #call the constructor of the parent class, Person.
    my $self = $class->SUPER::new();
    $self->{_id}   = undef;
    $self->{_title} = undef;
    bless $self, $class;
    return $self;
}

#accessor method for  id
sub id {
    my ( $self, $id ) = @_;
    $self->{_id} = $id if defined($id);
    return ( $self->{_id} );
}

#accessor method for  title
sub title {
    my ( $self, $title ) = @_;
    $self->{_title} = $title if defined($title);
    return ( $self->{_title} );
}

sub print {
    my ($self) = @_;

    # we will call the print method of the parent class
    $self->SUPER::print;
    $self->address->print;
}

1;
