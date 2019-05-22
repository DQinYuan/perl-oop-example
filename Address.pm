#class Address
package Address;
use strict;

#constructor
sub new {
    my ($class) = @_;
    my $self =
      { _street => undef, _city => undef, _state => undef, _zip => undef };
    bless $self, $class;
    return $self;
}

#accessor method for street
sub street {
    my ( $self, $street ) = @_;
    $self->{_street} = $street if defined($street);
    return ( $self->{_street} );
}

#accessor method for city
sub city {
    my ( $self, $city ) = @_;
    $self->{_city} = $city if defined($city);
    return ( $self->{_city} );
}

#accessor method for state
sub state {
    my ( $self, $state ) = @_;
    $self->{_state} = $state if defined($state);
    return ( $self->{_state} );
}

#accessor method for zip
sub zip {
    my ( $self, $zip ) = @_;
    $self->{_zip} = $zip if defined($zip);
    return ( $self->{_zip} );
}

sub print {
    my ($self) = @_;
    printf( "Address:%s\n%s, %s %s\n\n",
        $self->street, $self->city, $self->state, $self->zip );
}

1;
