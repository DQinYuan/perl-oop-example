#!/usr/bin/perl
use lib '.';
use strict;
use warnings;
use diagnostics;
use Employee;

#create Employee class instance
my $khurt =  eval { new Employee(); }  or die ($@);
 
#set object attributes
$khurt->firstName('Khurt');
$khurt->lastName('Williams');
$khurt->id(1001);
$khurt->title('Executive Director');

$khurt->address( new Address() );

$khurt->address->street('10 Anywhere Lane');
$khurt->address->city('Anytown');
$khurt->address->state('NJ');
$khurt->address->zip('12345');

#diplay Employee info
$khurt->print();
