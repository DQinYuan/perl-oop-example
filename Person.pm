#class Person
package Person;
use strict;
use Address;    #Person class will contain an Address

#constructor
sub new {
    my ($class) = @_;
    my $self = {
        _firstName => undef,
        _lastName  => undef,
        _ssn       => undef,
        _address   => undef
    };
    # bless用于将对象与包关联
    bless $self, $class;
    return $self;
}

#accessor method for Person first name
sub firstName {
    my ( $self, $firstName ) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

#accessor method for Person last name
sub lastName {
    my ( $self, $lastName ) = @_;
    $self->{_lastName} = $lastName if defined($lastName);
    return $self->{_lastName};
}

#accessor method for Person address
sub address {
    my ( $self, $address ) = @_;
    $self->{_address} = $address if defined($address);
    return $self->{_address};
}

#accessor method for Person social security number
sub ssn {
    my ( $self, $ssn ) = @_;
    $self->{_ssn} = $ssn if defined($ssn);
    return $self->{_ssn};
}

sub print {
    my ($self) = @_;

    #print Person info
    printf( "Name:%s %s\n\n", $self->firstName, $self->lastName );
}

1;

