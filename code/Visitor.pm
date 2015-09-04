package Visitor;

use Spiffy -Base;

use Log::Log4perl qw(:easy);
    Log::Log4perl->easy_init($DEBUG);

my $logger = Log::Log4perl->get_logger('Visitor');

field 'fh';

sub open_file
{
    my $path = shift;
    open(my $fh, ">", $path) or die "cannot open < $path: $!";
    $self->fh($fh);
}

sub close_file
{
    close $self->fh;
}

sub puts
{
    my $s = shift;
    my $fh = $self->fh();
    print $fh $s;
}

sub visit
{
    my $node = shift @_;
    my $name = shift @_;
    $logger->debug ('visit name -> ' . $name) if $name;

    #$logger->debug ('visit node -> ' . $node) if $node;

    my $class_name = $node->{'class_name'};

    my $sub_name = 'visit_' . $class_name;
    $logger->debug ('visit sub_name -> ' . $sub_name);
    $self->$sub_name ($node);

}

sub visit_Node
{
    my $node = shift @_;

    my $class_name = $node->{'class_name'};

    my $attrs = $node->{'attrs'};

    my $children = $node->{'children'};

    my $child_key = [keys %$children];

    my $list = $node->{'list'};

    if (@$child_key or $list)
    {
        $self->visit_block($node, $class_name, [keys %$attrs], [keys %$children]);
    }
    else
    {
        $self->visit_leaf($node, $class_name, [keys %$attrs], [keys %$children]);
    }

}

sub visit_Node0
{
    my $node = shift @_;

    my $attrs = $node->{'attrs'};
    if (0 and $attrs)
    {
        $logger->debug ('visit_Node attrs length -> ' . (keys %$attrs));
        $self->puts($attrs->{$_} .' ') foreach keys %$attrs;
        $self->puts("\n");
    }

    my $children = $node->{'children'};
    my $list = $node->{'list'};

    if ($children or $list)
    {
        $logger->debug ('visit_Node children length -> ' . (keys %$children));
        $self->visit ($children->{$_}, $_) foreach keys %$children;
    }
}

sub visit_block
{
    my $node = shift;
    my $name = shift;
    my $attr_keys = shift;
    my $child_keys = shift;

    my $attrs = $node->{'attrs'};
    my $children = $node->{'children'};
    my $list = $node->{'list'};

    $self->puts($name. "\n");

    if ($attr_keys)
    {
        #$self->puts($attrs->{$_} .' ') for @$attr_keys;
        for (@$attr_keys)
        {
            $logger->debug('$_ => '. $_);
            $self->puts($attrs->{$_} .' ');
        }
        $self->puts("\n");
    }

    $self->visit($children->{$_}) for @$child_keys;

    if ($list)
    {
        $self->puts('BLOCK'. "\n");
        $self->visit($_) for @$list;
        $self->puts('END_'.'BLOCK'. "\n");
    }


    $self->puts('END_'.$name. "\n");
}


sub visit_leaf
{
    my $node = shift;
    my $name = shift;
    my $attr_keys = shift;

    my $attrs = $node->{'attrs'};

    $self->puts($name. ' ');
    if ($attr_keys)
    {
        #$self->puts($attrs->{$_} .' ') for @$attr_keys;
        for (@$attr_keys)
        {
            $logger->debug('$_ => '. $_);
            $self->puts($attrs->{$_} .' ');
        }
    }
    $self->puts("\n");




}




sub visit_attrs
{
    my $attrs = shift;
    my $keys = shift;


}

sub visit_children
{
    my $node = shift;
    my $children = $node->{'children'};
    $self->visit($children->{$_}) foreach keys %$children;

}


1


