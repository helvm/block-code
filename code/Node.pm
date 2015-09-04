package Node;

use strict;
use warnings;



use Log::Log4perl qw(:easy);
    Log::Log4perl->easy_init($ERROR);

my $logger = Log::Log4perl->get_logger('Node');



sub new
{
    my $class = shift;
    my $this = shift;
    my $self = bless $this, $class;

    $logger->debug ("new self => $self");

    my $class_name = $self->{'class_name'};

    $logger->debug ("new class_name => $class_name");


    my $props = $self->props();
    if ($props) {
        my %hash = %$props;
        foreach (keys %hash) {
            my $prop = $self->prop($_);
            my $node = Node->new($prop);
            $self->prop($_, $node);
        }
    }
    my $list = $self->list();
    my $nodes = [];
    foreach (@$list) {
        my $node = Node->new($_);
        push @$nodes, $node;
    }
    $self->list($nodes);

    return $self;
}

sub attr
{
    my $self = shift;
    my $key = shift;
    $logger->debug ("attr key => $key");

    $self->attrs()->{$key}= shift if (@_);
    return $self->attrs()->{$key};
}

sub prop
{
    my $self = shift;
    my $key = shift;
    $logger->debug ("prop key => $key");

    $self->props()->{$key} = shift if (@_);
    return $self->props()->{$key};
}




our $AUTOLOAD;
sub AUTOLOAD
{
    my $self = shift;
    my $key = $AUTOLOAD =~ s/.*:://r;

    $logger->debug ("AUTOLOAD key => $key");

    my $attr = $key =~/attr_(\s+)/;

    #return $self->attr()

    my $prop = $key =~/prop_(\s+)/;

    $self->{$key} = shift if (@_);

    return $self->{$key};
}

1
