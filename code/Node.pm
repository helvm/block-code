package Node;

use strict;
use warnings;

use Devel::StackTrace;

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

sub create
{
    
}

sub accept
{
    my $self = shift;
    my $visitor = shift;
    my $name = shift;
    $logger->debug ('accept name -> ' . $name) if $name;

    $self->accept_class_name ($visitor) if ($self->class_name);

}

sub accept_class_name
{
    my $self = shift;
    my $visitor = shift;
    my $method = 'visit_' . $self->class_name;
    $logger->debug ('accept method -> ' . $method);
    if ($visitor->can($method))
    {
        $visitor->$method ($self);
    }
    else
    {
        my $trace = Devel::StackTrace->new();
        while ( my $frame = $trace->prev_frame() ) {
            $logger->error ("Sub: ". $frame->subroutine());
        }
    }

}


sub attr
{
    my $self = shift;
    my $key = shift;
    $logger->debug ("attr key => $key");
    my $attrs = $self->attrs();
    $attrs->{$key} = shift if (@_);
    return $attrs->{$key};
}

sub prop
{
    my $self = shift;
    my $key = shift;
    $logger->debug ("prop key => $key");
    my $props = $self->props();
    $props->{$key} = shift if (@_);
    return $props->{$key};
}

our $AUTOLOAD;
sub AUTOLOAD
{
    my $self = shift;
    my $key = $AUTOLOAD =~ s/.*:://r;

    $logger->debug ("AUTOLOAD key => $key");

    return $self->attr($1) if ( $key =~/attr_(\w+)/);

    return $self->prop($1) if ( $key =~/prop_(\w+)/);

    #exists $self->{$key} or die "$key exists in $self";
    if (not exists $self->{$key}) {
        my $class_name = $self->{'classname'};
        $logger->error("$key not exists in $self");
        $logger->error($class_name);
        $logger->error($self->{$key});
        my $trace = Devel::StackTrace->new();
        while ( my $frame = $trace->prev_frame() )
        {
            $logger->error ("Sub: ". $frame->subroutine());
        }
        die;
    }

    $self->{$key} = shift if (@_);

    return $self->{$key};
}

1
