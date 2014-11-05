#
# (c) Jan Gehring <jan.gehring@gmail.com>
# 
# vim: set ts=3 sw=3 tw=0:
# vim: set expandtab:
#
   

package Net::OpenNebula::Template;
$Net::OpenNebula::Template::VERSION = '0.2.0';
use strict;
use warnings;

use Net::OpenNebula::RPC;
push our @ISA , qw(Net::OpenNebula::RPC);

use constant ONERPC => 'template';
use constant ONEPOOLKEY => 'VMTEMPLATE';

sub name {
   my ($self) = @_;
   $self->_get_info();

   return $self->{extended_data}->{NAME}->[0];
}


sub get_template_ref {
   my ($self) = @_;
   $self->_get_info();

   return { TEMPLATE => $self->{extended_data}->{TEMPLATE} };
}


sub get_data {
   my ($self) = @_;
   $self->_get_info;
   return $self->{extended_data};
}


sub create {
   my ($self, $tpl_txt) = @_;
   return $self->_allocate([ string => $tpl_txt ]);
}


sub instantiate {
    my ($self, %options) = @_;

    my @args = ([ int => $self->id ]);

    push(@args, [ string => $options{name} || "" ] );
    push(@args, [ boolean => $options{onhold} || 0 ] );
    push(@args, [ string => $options{extra} || "" ] );

    my $vmid = $self->_onerpc("instantiate", @args);
    
    return $vmid;
}

1;
